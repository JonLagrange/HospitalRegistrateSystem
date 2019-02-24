using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Page
{
    public partial class Regist : System.Web.UI.Page
    {
        private SqlConnection myConnection;
        private SqlCommand myCommand;
        protected void Page_Load(object sender, EventArgs e)
        {
            myConnection = new SqlConnection
                ("server=SISIANDL; database=Database1; integrated security=SSPI");
                //("server=fyscu-20150521p; database=WebTestDB01; integrated security=SSPI");
                //("server=WY-PC; database=BS_TestDB; integrated security=SSPI");
                //("server=ALIENWARE-PC\\RICHARDSERVER; database=BS_TestDB; integrated security=SSPI");
            myConnection.Open();
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
            //string userNameValue = Request["userName"];
            //string userKeyValue = Request["userKey"];
        }

        protected void RegistButton_Click(object sender, EventArgs e)
        {

            if (Request["userKey"] != "" && Request["userKey"] == Request["userKey0"])
            {

               try
                { 
                string IDCard = Request["IDCard"];
                string PhoneNum = Request["PhoneNum"];
                string BankCardID = Request["BankCardID"];
                string name = Request["userName"];
                string key = Request["userKey"];
                string gender1 = Request["RadioGroup1"];
                string gender = gender1.Equals("1") ? "女" : "男";
                int year = Convert.ToInt32(Request["year"]);
                int month = Convert.ToInt32(Request["month"]);
                int day=Convert.ToInt32(Request["day"]);
               
                    DateTime birth = new DateTime(year, month, day);
               
                string address = Request["address"];
                string email = Request["email"];
                if (IDCard != "" && PhoneNum != "" && BankCardID != "" && name != "" && key != "")//用于判断是否有空未输入
                {
                    string Command = "Insert into [USER] (userID, userNAME, userKEY, IDCard, PhoneNum, BankCardID, gender, email, address, birth) values ('" 
                                      + IDCard + "', '" + name + "', '" + key + "', '" + IDCard + "', '" 
                                      + PhoneNum + "', '" + BankCardID + "', '"+gender+ "', '"+email+ "', '"+address+ "', '"+birth +"')";
                    myCommand = new SqlCommand
                       (Command, myConnection);
                    myCommand.ExecuteNonQuery();
                    Response.Redirect("RegistSuccess.aspx");
                }
                else
                {
                    Response.Write("<script>alert(\"请填入完整信息\");</script>");
                }
               }
                catch
                {
                    Response.Write("javascript:alert(\"wrong date\")");
                }
            }
            else
            {
                Response.Write("<script>alert(\"两次密码不一致，请重新输入\");</script>");
            }

        }
    }
}