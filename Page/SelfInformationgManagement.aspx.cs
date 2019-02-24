using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Page
{
    public partial class SelfInformationgManagement : System.Web.UI.Page
    {
        private SqlConnection myConnection;
        private SqlCommand myCommand;
        private DataTable DT = new DataTable();
        private SqlDataAdapter SDA = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            string Command = "Select * from [USER] where userID = '" + Session["userID"].ToString() + "'";
            myConnection = new SqlConnection
                ("server=SISIANDL; database=Database1; integrated security=SSPI");
            myConnection.Open();
            myCommand = new SqlCommand
              (Command, myConnection);
            myCommand.ExecuteNonQuery();
            SDA.SelectCommand = myCommand;
            SDA.Fill(DT);
            try
            {
                userID.Text = DT.Rows[0][0].ToString();
                userNAME.Text = DT.Rows[0][1].ToString();
                IDCard.Text = DT.Rows[0][3].ToString();
                BankCardID.Text = DT.Rows[0][5].ToString();
                PhoneNum.Text = DT.Rows[0][4].ToString();

            
               
            }
            catch
            {

            }

        }
        public string getDate(DateTime day)
        {
            string time = day.Year+"年"+day.Month+"月"+day.Day+"日";
            return time;
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        
    }
}