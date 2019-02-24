using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Page
{
    public partial class Arange : System.Web.UI.Page
    {
        private SqlConnection myConnection;
        private SqlCommand myCommand;
        private DataTable DT = new DataTable();
        private SqlDataAdapter SDA = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            myConnection = new SqlConnection("server=SISIANDL; database=Database1; integrated security=SSPI");
            //   ("server=fyscu-20150521p; database=Arange; integrated security=SSPI");
            //("server=WY-PC; database=BS_TestDB; integrated security=SSPI");
            //("server=ALIENWARE-PC\\RICHARDSERVER; database=BS_TestDB; integrated security=SSPI");
            myConnection.Open();
            bool flag = false;
            if (Session["loginFlag"] != null && Session["loginFlag"].ToString().Equals("true"))//判断是否已经登陆如果没有登录，则会显示不同的模块
            {
                userName.InnerText = Session["userName"].ToString();
                string userID = Session["userID"].ToString();
                string sql = "select * from Admin where AdminID=" + userID;
                myCommand = new SqlCommand(sql, myConnection);
                myCommand.ExecuteNonQuery();
                SqlDataAdapter SDA4 = new SqlDataAdapter();
                DataTable DT4 = new DataTable();
                SDA4.SelectCommand = myCommand;
                SDA4.Fill(DT4);
                if (DT4.Rows.Count != 0)
                    flag = true;
            }
            if (flag == true)
            {
                if (!IsPostBack)
                {
                    string Command = "";
                    if (!string.IsNullOrEmpty(Request.QueryString["act"]))
                    {
                        string method = Request.QueryString["act"].ToString();

                        if (method.Equals("init"))
                        {
                            Command = "Select * from [Hospital]";
                            myCommand = new SqlCommand(Command, myConnection);
                            myCommand.ExecuteNonQuery();
                            SqlDataAdapter SDA3 = new SqlDataAdapter();
                            DataTable DT3 = new DataTable();
                            SDA3.SelectCommand = myCommand;
                            SDA3.Fill(DT3);
                            string json = "[";
                            for (int i = 0; i < DT3.Rows.Count; i++)
                            {
                                json += "{\"hospitalName\":\"" + DT3.Rows[i][1].ToString() + "\",\"hospitalID\":\"" + DT3.Rows[i][0].ToString() + "\"}";
                                if (i != DT3.Rows.Count - 1)
                                    json += ",";
                            }
                            json += "]";
                            Response.Clear();
                            Response.Write(json);
                            Response.End();

                        }
                        if (method.Equals("getNext"))
                        {
                            Response.Clear();
                            string a = Request.QueryString["hosID"].ToString();
                            Command = "Select * from [Department] where BelongHospitalID=" + a;
                            myCommand = new SqlCommand(Command, myConnection);
                            myCommand.ExecuteNonQuery();

                            SDA.SelectCommand = myCommand;
                            SDA.Fill(DT);
                            string id = "";
                            string name = "";
                            string json = "[";

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
                        if (method.Equals("getDocID"))
                        {
                            Response.Clear();
                            string a = Request.QueryString["departmentID"].ToString();
                            Command = "Select * from [Doctor] where BelongDepartmentID=" + a;
                            myCommand = new SqlCommand(Command, myConnection);
                            myCommand.ExecuteNonQuery();

                            SDA.SelectCommand = myCommand;
                            SDA.Fill(DT);
                            string id = "";
                            string name = "";
                            string json = "[";
                            for (int i = 0; i < DT.Rows.Count; i++)
                            {
                                id = DT.Rows[i][0].ToString();
                                name = DT.Rows[i][1].ToString();
                                json += "{\"docID\":\"" + id + "\",\"docName\":\"" + name + "\"}";
                                if (i != DT.Rows.Count - 1)
                                    json += ",";
                            }
                            json += "]";
                            Response.Write(json);
                            Response.End();

                        }
                        if (method.Equals("getDocInfo"))
                        {
                            string id = "";
                            string room = "";
                            string title = "";
                            string num = "";
                            string json = "";


                            string a = Request.QueryString["docID"].ToString();
                            Command = "Select * from [Doctor] where DoctorID=" + a;
                            myCommand = new SqlCommand(Command, myConnection);
                            myCommand.ExecuteNonQuery();

                            SDA.SelectCommand = myCommand;
                            SDA.Fill(DT);

                            id = DT.Rows[0][0].ToString();
                            room = DT.Rows[0][4].ToString();
                            title = DT.Rows[0][3].ToString();
                            json += "{\"docID\":\"" + id + "\",\"room\":\"" + room + "\",\"title\":\"" + title;
                            for (int j = 0; j < 7; j++)
                            {
                                num = DT.Rows[0][6 + j].ToString();
                                json += "\",\"day_" + j + "\":\"" + num;
                            }
                            json += "\"}";

                            Response.Clear();
                            Response.Write(json);
                            Response.End();
                            //    Response.End();
                        }
                        if (method.Equals("submit_Click"))
                        {
                            string n = Request.QueryString["num"];

                            string hosName = "";
                            string departmentName = "";
                            string roomName = "";
                            string docID = "";
                            string hosID = "";
                            string departmentID = "";
                            string docName = "";
                            string docTitle = "";
                            int docIDLenth = 0;
                            int mon = 0, tue = 0, thir = 0, forth = 0, fri = 0, sat = 0, sun = 0;
                            int i = 0;
                            string recordTime = "";
                            DateTime today = DateTime.Now;
                            try
                            {
                                recordTime += today.Year + "/" + today.Month + "/" + today.Day;
                                string test = Request["docName_" + i + "_" + n];
                                while (i < 6 && !string.IsNullOrEmpty(Request["docName_" + i + "_" + n]))
                                {
                                    if (n.Equals("2"))
                                    {
                                        Command = "Delete Doctor where DoctorID=" + docID;
                                        myCommand = new SqlCommand(Command, myConnection);
                                        myCommand.ExecuteNonQuery();

                                        Command = "Delete Arrange where DoctorID=" + docID;
                                        myCommand = new SqlCommand(Command, myConnection);
                                        myCommand.ExecuteNonQuery();

                                    }
                                    else
                                    {
                                        hosID = Request["hospital_" + i + "_" + n];
                                        departmentID = Request["department_" + i + "_" + n];
                                        roomName = Request["room_" + i + "_" + n];
                                        docID = Request["docID_" + i + "_" + n];
                                        docIDLenth = docID.Length;
                                        if (docIDLenth == 7)
                                        {
                                            docName = Request["docName_" + i + "_" + n];
                                            docTitle = Request["docTitle_" + i + "_" + n];
                                            mon = Convert.ToInt32(Request["mon_" + i + "_" + n]); tue = Convert.ToInt32(Request["tue_" + i + "_" + n]); thir = Convert.ToInt32(Request["thir_" + i + "_" + n]);
                                            forth = Convert.ToInt32(Request["forth_" + i + "_" + n]); fri = Convert.ToInt32(Request["fri_" + i + "_" + n]);
                                            sat = Convert.ToInt32(Request["sat_" + i + "_" + n]); sun = Convert.ToInt32(Request["sun_" + i + "_" + n]);

                                            if (n.Equals("0"))
                                            {

                                                Command = "select DepartmentName,BelongHospitalName from [Department] where DepartmentID=" + departmentID;
                                                myCommand = new SqlCommand
                                                (Command, myConnection);
                                                myCommand.ExecuteNonQuery();
                                                SDA.SelectCommand = myCommand;
                                                SDA.Fill(DT);
                                                departmentName = DT.Rows[0][0].ToString();
                                                hosName = DT.Rows[0][1].ToString();

                                                //docID 是自动生成更好还是输入更好？？？？？？？？
                                                Command = "Insert into [Doctor] (DoctorID, DoctorName, BelongDepartmentID, title, Room, DoctorKey, Arrange_0, Arrange_1, "
                                                           + "Arrange_2, Arrange_3, Arrange_4, Arrange_5, Arrange_6, BelongDepartmentName, BelongHospitalName) values ('"
                                                         + docID + "', '" + docName + "', '" + departmentID + "', '" + docTitle + "', '" + roomName + "', '111', " + sun + ", " + mon + ", " + tue + ", "
                                                         + thir + ", " + forth + ", " + fri + ", " + sat + ", '" + departmentName + "', '" + hosName + "')";
                                                myCommand = new SqlCommand(Command, myConnection);
                                                myCommand.ExecuteNonQuery();

                                                Command = "Insert into [Arrange] (DoctorID, DepartmentID, Room, Arrange_0, Arrange_1, Arrange_2, Arrange_3,"
                                                          + " Arrange_4, Arrange_5, Arrange_6, Arrange_7, Arrange_8, Arrange_9, Arrange_10, Arrange_11, Arrange_12, Arrange_13, RecordDay) values ('"
                                                    + docID + "', '" + departmentID + "', '" + roomName + "', " + sun + ", " + mon + ", " + tue + ", " + thir + ", " + forth + ", " + fri + ", " + sat + ", "
                                                    + sun + ", " + mon + ", " + tue + ", " + thir + ", " + forth + ", " + fri + ", " + sat + ", '" + recordTime + "')";
                                                myCommand = new SqlCommand(Command, myConnection);
                                                myCommand.ExecuteNonQuery();
                                            }
                                            else if (n.Equals("1"))
                                            {
                                                Command = "Update Doctor Set  title='" + docTitle + "', Room='" + roomName + "', Arrange_0=" + sun + ", Arrange_1=" + mon + ",Arrange_2="
                                                         + tue + ", Arrange_3=" + thir + ", Arrange_4=" + forth + ", Arrange_5=" + fri + ", Arrange_6=" + sat + " where DoctorID=" + docID;
                                                myCommand = new SqlCommand(Command, myConnection);
                                                myCommand.ExecuteNonQuery();

                                                Command = "Update Arrange Set Room='" + roomName + "' where DoctorID=" + docID;
                                                myCommand = new SqlCommand(Command, myConnection);
                                                myCommand.ExecuteNonQuery();

                                            }

                                            i++;
                                        }
                                        else
                                            break;
                                    }
                                }
                                if (n.Equals("0") && i != 0 && docIDLenth == 7)
                                {
                                    Response.Write("<script>alert(\"成功录入" + i + "条医生记录\");</script>");
                                }
                                else if (n.Equals("1") && docIDLenth == 7)
                                {
                                    Response.Write("<script>alert(\"成功修改" + i + "条医生记录\");</script>");
                                }
                                else if (n.Equals("2") && docIDLenth == 7)
                                {
                                    Response.Write("<script>alert(\"成功删除" + i + "条医生记录\");</script>");
                                }
                                else
                                {
                                    Response.Write("<script>alert(\"录入错误请确认医生账号是否为7位\");</script>");
                                }
                            }
                            catch (Exception error)
                            {
                                Response.Write("<script>alert(\"医生ID已存在或确认医生就诊数值是否正确\");</script>");
                            }
                        }
                    }
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
            //string userNameValue = Request["userName"];
            //string userKeyValue = Request["userKey"];
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
        }
    }
}