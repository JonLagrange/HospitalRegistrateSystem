using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Page
{
    public partial class Search : System.Web.UI.Page
    {
        private SqlConnection myConnection;
        private SqlCommand myCommand;
        private DataTable DT = new DataTable();
        private SqlDataAdapter SDA = new SqlDataAdapter();
        public static string sendValue = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string Command = "";
            myConnection = new SqlConnection
               ("server=SISIANDL; database=Database1; integrated security=SSPI");
            myConnection.Open();
            if (!IsPostBack)
            {
                if (Request.QueryString["act"] == null && Session["loginFlag"] != null && Session["loginFlag"].ToString().Equals("true"))//判断是否已经登陆如果没有登录，则会显示不同的模块
                {
                    loginPart.Style["display"] = "none";
                    selfMangement.Style["display"] = "block";
                    userName.InnerText = Session["userName"].ToString();
                }
                //数据库连接取出医院信息
                if (string.IsNullOrEmpty(Request.QueryString["act"]))
                {
                    Command = "Select * from [Hospital]";
                    SqlDataAdapter dap = new SqlDataAdapter(Command, myConnection);
                    DataTable dt = new DataTable();
                    dap.Fill(dt);
                    hospital.DataSource = dt;
                    hospital.DataTextField = "HospitalName";
                    hospital.DataValueField = "HospitalID";
                    hospital.DataBind();
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
                   
                    if (method.Equals("getNext"))
                    {
                        Response.Clear();
                        String a = Request.QueryString["hosID"].ToString();
                        Command = "Select * from [Department] where BelongHospitalID=" + a;
                        myCommand = new SqlCommand(Command, myConnection);
                        myCommand.ExecuteNonQuery();

                        SDA.SelectCommand = myCommand;
                        SDA.Fill(DT);
                        string id = "";
                        string name = "";
                        string json = "[";
                        try
                        {
                            for (int i = 0; i < DT.Rows.Count; i++)
                            {
                                id = DT.Rows[i][0].ToString();
                                name = DT.Rows[i][1].ToString();
                                json += "{\"departmentID\":\"" + id + "\",\"departmentName\":\"" + name + "\"}";
                                if (i != DT.Rows.Count - 1)
                                    json += ",";
                            }
                            json += "]";
                            Response.Write(json);
                            Response.End();
                        }
                        catch
                        {

                        }

                    }
                }
            }
        }

        protected void RegistButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Regist.aspx");
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
    }

}