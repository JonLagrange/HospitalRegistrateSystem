using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Page
{
    public partial class AddPatient : System.Web.UI.Page
    {
        private SqlConnection myConnection;
        private SqlCommand myCommand; 
        private DataTable DT = new DataTable();
        private SqlDataAdapter SDA = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            myConnection = new SqlConnection("server=SISIANDL; database=Database1; integrated security=SSPI");
             //   ("server=fyscu-20150521p; database=WebTestDB01; integrated security=SSPI");
            //("server=WY-PC; database=BS_TestDB; integrated security=SSPI");
            //("server=ALIENWARE-PC\\RICHARDSERVER; database=BS_TestDB; integrated security=SSPI");
            myConnection.Open();

            string docID = Request.QueryString["docID"];
            string Command = "select * from [Registration]  where DoctorID='" + docID+"' and isUsed='false'";
            myCommand = new SqlCommand
                  (Command, myConnection);
            myCommand.ExecuteNonQuery();

            SDA.SelectCommand = myCommand;
            SDA.Fill(DT);
            string html = "<table width=\"514\" border=\"1\" align=\"center\" cellpadding=\"1\" cellspacing=\"1\" bordercolor=\"#F55B1A\"> "
                      + "<tr><td height=\"28\" colspan=\"4\" bgcolor=\"#F55B1A\"><div align=\"center\"><span class=\"STYLE8\">病人列表</span></div></td></tr>"
                      +"<tr><td width=\"424\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">病人ID</span><span class=\"STYLE8\"></span></td>"
                      +"<td width=\"424\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">病人姓名</span><span class=\"STYLE8\"></span></td>"
                      +"<td width=\"424\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">预约时间</span><span class=\"STYLE8\"></span></td>"
                      +"<td width=\"87\" colspan=\"-3\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">操作</span></td></tr>";
            for (int i = 0; i < DT.Rows.Count; i++)
            {//已经写过病例的病人不再显示
                string patientID=DT.Rows[i][1].ToString();
                SqlDataAdapter SDA2=new SqlDataAdapter();
                DataTable DT2=new DataTable();
                Command="select userNAME from [USER] where userID='"+patientID+"'";
                myCommand = new SqlCommand
                  (Command, myConnection);
                myCommand.ExecuteNonQuery();

                SDA2.SelectCommand = myCommand;
                SDA2.Fill(DT2);
                string patientName = DT2.Rows[0][0].ToString();
                string time = DT.Rows[i][2].ToString();
                html += "<tr><td width=\"424\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">"+patientID+"</span><span class=\"STYLE8\"></span></td>"
                      +"<td width=\"424\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">"+patientName+"</span><span class=\"STYLE8\"></span></td>"
                      +"<td width=\"424\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">"+time+"</span><span class=\"STYLE8\"></span></td>"
                      + "<td><a href=\"sickCase.aspx?RegistrationID="+DT.Rows[i][0].ToString()+"&time="+time+"&patientID="+patientID+"&patientName="+patientName+"&docID="+docID+"\" style=\"width:100px\">写病历</button></td></tr>";
            }
            html += "<td height=\"28\" colspan=\"4\" bgcolor=\"#F55B1A\"><div align=\"right\"></div></td></tr><tr><td height=\"28\" colspan=\"4\" bgcolor=\"#F55B1A\"><div align=\"center\"></div></td></tr></table>";
            information.InnerHtml = html;
        }

        protected void AlterButton_Click1(object sender, EventArgs e)
        {
            Response.Redirect("patientInfo.aspx");
        }

        protected void AlterButton_Click2(object sender, EventArgs e)
        {
            Response.Redirect("patientInfo.aspx");
        }

        protected void AlterButton_Click3(object sender, EventArgs e)
        {
            Response.Redirect("patientInfo.aspx");
        }

        protected void AlterButton_Click4(object sender, EventArgs e)
        {
            Response.Redirect("patientInfo.aspx");
        }

        protected void AlterButton_Click5(object sender, EventArgs e)
        {
            Response.Redirect("patientInfo.aspx");
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("patientInfo.aspx");
        }
    }
}