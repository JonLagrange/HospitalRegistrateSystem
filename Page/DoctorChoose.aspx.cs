using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication1.Page
{
    public partial class DoctorChoose : System.Web.UI.Page
    {
        private SqlConnection myConnection;
        private SqlCommand myCommand;
        private DataTable DT = new DataTable();
        private SqlDataAdapter SDA = new SqlDataAdapter();
        public static string sendValue = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            string[] day = { "天", "一", "二", "三", "四", "五", "六" };
            string Command = "";
            myConnection = new SqlConnection
                  ("server=SISIANDL; database=Database1; integrated security=SSPI");
            myConnection.Open();
            if (!IsPostBack)
            {
                if (Session["loginFlag"] != null && Session["loginFlag"].ToString().Equals("true"))
                {
                    loginPart.Style["display"] = "none";
                    selfMangement.Style["display"] = "block";
                    userName.InnerText = Session["userName"].ToString();
                }
                if (!string.IsNullOrEmpty(Request.QueryString["act"]))
                {
                    string method = Request.QueryString["act"].ToString();
                    if (method.Equals("logoff"))
                    {
                        Session["loginFlag"] = "false";
                        Session["userID"] = null;
                        Session["userName"] = null;
                    }
                    if (method.Equals("getNextWeek") || method.Equals("redirect"))
                    {
                        int week = 0;
                        if (!string.IsNullOrEmpty(Request.QueryString["weekNum"]))
                            week = Convert.ToInt32(Request.QueryString["weekNum"]);
                        DateTime today = DateTime.Now;
                        int dayOfWeek = Convert.ToInt32(today.DayOfWeek);

                        String a = Request.QueryString["departmentID"].ToString();
                        //计算该科的所有医生
                        Command = "Select * from [Doctor] where BelongDepartmentID=" + a;
                        myCommand = new SqlCommand(Command, myConnection);
                        myCommand.ExecuteNonQuery();

                        SDA.SelectCommand = myCommand;
                        SDA.Fill(DT);


                        string html = "<input id=\"departmentID\" type=\"hidden\" value=\"" + a + "\"></input><table width=\"800\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" bordercolor=\"#F55B1A\" style=\"margin:auto\"><tr>"
                                      + " <td height=\"28\" colspan=\"11\" bgcolor=\"#F55B1A\"><div align=\"center\"><span class=\"STYLE8\">医生列表</span></div></td></tr>";
                        html += "<tr class=\"choose\"> <td class=\"STYLE8\" bgcolor=\"#FFFFFF\">医生ID</td><td class=\"STYLE8\" bgcolor=\"#FFFFFF\">医生名字</td><td class=\"STYLE8\" bgcolor=\"#FFFFFF\">所在诊室</td><td class=\"STYLE8\" bgcolor=\"#FFFFFF\">职称</td>";
                        for (int j = 0; j < 7; j++)
                        {
                            html += "<td  width=\"80\" class=\"STYLE8\" bgcolor=\"#FFFFFF\">周" + day[j % 7] + "<lable id=\"week_" + j + "\" style=\"display:block\">" + today.AddDays(-dayOfWeek + j + week * 7).Year + "年" + today.AddDays(-dayOfWeek + j + week * 7).Month + "月" + today.AddDays(-dayOfWeek + j + week * 7).Day + "日" + "</lable>";
                        }
                        string name = "";
                        string id = "";
                        string arrangeID = "";
                        for (int i = 0; i < DT.Rows.Count; i++)
                        {
                            id = DT.Rows[i][0].ToString();

                            //计算该医生的所有剩余挂号数
                            string Command2 = "select * from [Arrange] where DoctorID=" + id;
                            SqlCommand myCommand2 = new SqlCommand(Command2, myConnection);
                            myCommand2.ExecuteNonQuery();
                            SqlDataAdapter SDA2 = new SqlDataAdapter();
                            DataTable DT2 = new DataTable();
                            SDA2.SelectCommand = myCommand2;
                            SDA2.Fill(DT2);

                            arrangeID = DT2.Rows[0][0].ToString();
                            name = DT.Rows[i][1].ToString();
                            string title = DT.Rows[i][3].ToString();
                            string room = DT2.Rows[0][3].ToString();
                            html += "<tr class=\"choose\"> <td class=\"choose\">" + id + "</td>" + "<td class=\"choose\">" + name + "</td>" + "<td class=\"choose\">" + room + "</td>" + "</td>" + "<td class=\"choose\">" + title + "</td>";
                            for (int j = 0; j < 7; j++)
                            {
                                int offset = j - dayOfWeek + week * 7;
                                if (offset <= 14)
                                {
                                    offset = (offset + dayOfWeek) % 14;
                                    if (week == 0 && dayOfWeek >= j)
                                        html += "<td class=\"choose\" width=\"80\"><lable  style=\"display:block\">无法预约</label> </td>";
                                    else
                                    {
                                        string left = DT2.Rows[0][offset + 4].ToString();
                                        html += "<td class=\"choose\" width=\"80\"><a href=\"javascript:getRegistrate(" + arrangeID + "," + (j + week * 7) % 14 + ")\" style=\"display:block\" >预约</a>"
                                                 + "<lable style=\"display:block\" id=\"" + id + "_" + (j + week * 7) % 14 + "\">还剩余" + left + "位</lable></td>";
                                    }
                                }
                                else
                                {
                                    html += "<td class=\"choose\" width=\"80\"><lable  style=\"display:block\">无法预约</label> </td>";
                                }
                            }
                        }
                        html += " <tr><td height=\"28\" colspan=\"11\" bgcolor=\"#F55B1A\"><div align=\"center\"><input type=\"button\" onclick=\"addWeek(-1)\" value=\"上一周\"></input><input type=\"button\" onclick=\"addWeek(1)\" value=\"下一周\"></input></div></td></tr></table>";

                        if (!method.Equals("getNextWeek"))
                        {

                            tableForDoctor.InnerHtml += html;

                        }
                        else
                        {
                            Response.Clear();
                            Response.Write(html);
                            Response.End();
                        }
                    }
                    if (method.Equals("RecordRegistration"))
                    {
                        if (Session["loginFlag"] == null || !Session["loginFlag"].Equals("true"))
                        {
                            Response.Clear();
                            Response.Write("{\"information\":\"noUser\"}");
                            Response.End();
                        }
                        else
                        {
                            string arrangeID = Request.QueryString["arrangeID"];
                            int x = 4;
                            int t = x - arrangeID.Length;
                            for (int i = 0; i < t; i++)
                            {
                                arrangeID = "0" + arrangeID;
                            }
                            int dayInt = Convert.ToInt32(Request.QueryString["day"]);
                            string userID = Session["userID"].ToString();
                            Command = "select DoctorID, Arrange_" + dayInt + " from [Arrange] where ArrangeID=" + arrangeID;
                            myCommand = new SqlCommand(Command, myConnection);
                            myCommand.ExecuteNonQuery();
                            SDA.SelectCommand = myCommand;
                            SDA.Fill(DT);
                            string docID = DT.Rows[0][0].ToString();
                            int num = Convert.ToInt32(DT.Rows[0][1].ToString());
                            DateTime time = calculateTime(dayInt);
                            if (num <= 0)
                            {
                                Response.Clear();
                                Response.Write("{\"information\":\"overflow\"}");
                                Response.End();
                            }
                            else
                            {
                                num--;
                                Command = "update Arrange Set Arrange_" + dayInt + "=" + num + " where ArrangeID='" + arrangeID + "'";
                                myCommand = new SqlCommand(Command, myConnection);
                                myCommand.ExecuteNonQuery();

                                Command = "Insert into [Registration] (PatientID, RegistrationTime, isUsed, DoctorID) values ('"
                                            + userID + "', '" + time + "', 0, '" + docID + "')";
                                myCommand = new SqlCommand(Command, myConnection);
                                myCommand.ExecuteNonQuery();
                                string json = "{\"information\":\"success\",\"num\":\"" + dayInt + "\",\"id\":\"" + docID + "\",\"left\":\"" + num + "\"}";
                                Response.Clear();
                                Response.Write(json);
                                Response.End();
                            }
                        }
                    }

                }
            }
        }
          public DateTime calculateTime(int day){
              DateTime today= DateTime.Now;
              int today_week =Convert.ToInt32(today.DayOfWeek);
              DateTime registateDay = today.AddDays(day-today_week);
              return registateDay;
                }
            
        protected void LoginButton_Click(object sender, EventArgs e)
        {

            string userNameValue = Request["userName"];
            string userKeyValue = Request["userKey"];
            string Command = "";
            if (userNameValue.Length == 18)
            {
                Command = "Select userKEY,userNAME from [USER] where userID = '" + userNameValue + "'";

                myCommand = new SqlCommand
                   (Command, myConnection);
                myCommand.ExecuteNonQuery();

                SDA.SelectCommand = myCommand;
                SDA.Fill(DT);
            }
            else if (userNameValue.Length == 7)
            {
                Command = "select DoctorKey,DoctorName from [Doctor] where DoctorID='" + userNameValue + "'";
                myCommand = new SqlCommand
              (Command, myConnection);
                myCommand.ExecuteNonQuery();

                SDA.SelectCommand = myCommand;
                SDA.Fill(DT);
            }
            else if (userNameValue.Length == 5)
            {
                Command = "select AdminKey,AdminID from [Admin] where AdminID='" + userNameValue + "'";
                myCommand = new SqlCommand
              (Command, myConnection);
                myCommand.ExecuteNonQuery();

                SDA.SelectCommand = myCommand;
                SDA.Fill(DT);
            }
            else
            {
                Response.Write("<script>alert(\"登陆错误\");</script>");
                return;
            }
            string key = "";
            string name = "";
            try
            {
                key = DT.Rows[0][0].ToString();
                name = DT.Rows[0][1].ToString();
            }
            catch
            {
                Response.Write("<script>alert(\"登陆错误\");</script>");
                return;
            }
            //以上在从数据库中拿出对应id号的密码
            if (key != "" && key.Trim() == userKeyValue)//检查对应的id号的密码是否与输入密码相等
            {
                Session["loginFlag"] = "true";//用于标记是否有用户登录从而决定login.aspx界面的用户登录界面显示哪一个div块
                Session["userID"] = userNameValue;
                Session["userName"] = name;
                userName.InnerText = name;
                loginPart.Style["visibility"] = "hidden";
                loginPart.Style["display"] = "none";
                selfMangement.Style["visibility"] = "visible";
                selfMangement.Style["display"] = "block";

                if (userNameValue.Length == 7)
                    Response.Redirect("AddPatient.aspx?docID=" + userNameValue);
                if (userNameValue.Length == 5)
                    Response.Redirect("Arange.aspx");
                // Server.Transfer("HomePage.aspx");
                //Server.Transfer("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert(\"登陆错误\");</script>");
            }
            
        }

        protected void RegistButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Regist.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }
    }
}