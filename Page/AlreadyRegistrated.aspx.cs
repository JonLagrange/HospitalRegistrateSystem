using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace HospitalRegistrateSystem.Page
{
    public partial class AlreadyRegistrated : System.Web.UI.Page
    {
        private SqlConnection myConnection;
        private SqlCommand myCommand;
        private DataTable DT = new DataTable();
        private SqlDataAdapter SDA = new SqlDataAdapter();
        public static string sendValue = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string patientName = (string)Session["userName"];
            userName.InnerText = patientName;
            myConnection = new SqlConnection
                  ("server=SISIANDL; database=Database1; integrated security=SSPI");
            myConnection.Open();
            string patientID = (string)Session["userID"];
            string Command = "select * from Registration where PatientID='" + patientID + "'";
            myCommand = new SqlCommand(Command, myConnection);
            myCommand.ExecuteNonQuery();
            SDA.SelectCommand = myCommand;
            SDA.Fill(DT);

            string html = "<table width=\"80%\" height=\"100%\" border=\"1\" align=\"center\" cellpadding=\"1\" cellspacing=\"1\" bordercolor=\"#F55B1A\">"
                         + "<tr><td height=\"28\" colspan=\"5\" bgcolor=\"#F55B1A\"><div align=\"center\"><span class=\"STYLE8\">已经预约信息查询</span></div></td></tr>"
                         + "<tr><td width=\"100\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">预约ID</span><span class=\"STYLE8\"></span></td>"
                         + "<td width=\"100\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">医生名字</span><span class=\"STYLE8\"></span></td>"
                         + "<td width=\"170\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">地址</span><span class=\"STYLE8\"></span></td>"
                         + "<td width=\"50\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">是否已就诊</span><span class=\"STYLE8\"></span></td>"
                         + "<td width=\"50\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">操作</span><span class=\"STYLE8\"></span></td></tr><tr>";
            for (int i = 0; i < DT.Rows.Count; i++)
            {

                string registrationID = DT.Rows[i][0].ToString();
                string docID = DT.Rows[i][4].ToString();
                string isUsed = DT.Rows[i][3].ToString().Equals("False") ? "否" : "是";
                Command = "select DoctorName,BelongDepartmentName,BelongHospitalName,Room from [Doctor] where DoctorID='" + docID + "'";
                myCommand = new SqlCommand(Command, myConnection);
                myCommand.ExecuteNonQuery();
                SqlDataAdapter SDA2 = new SqlDataAdapter();
                DataTable DT2 = new DataTable();
                SDA2.SelectCommand = myCommand;
                SDA2.Fill(DT2);
                string docName = DT2.Rows[0][0].ToString();
                string address = DT2.Rows[0][2].ToString() + ">>" + DT2.Rows[0][1].ToString() + ">>" + DT2.Rows[0][3].ToString();

                html+="<tr><td width=\"100\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">"+registrationID+"</span><span class=\"STYLE8\"></span></td>"
                         + "<td width=\"100\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">"+docName+"</span><span class=\"STYLE8\"></span></td>"
                         + "<td width=\"170\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">"+address+"</span><span class=\"STYLE8\"></span></td>"
                         + "<td width=\"50\" height=\"28\" bgcolor=\"#FFFFFF\"><span class=\"STYLE8\">"+isUsed+"</span><span class=\"STYLE8\"></span></td>"
                         + "<td width=\"50\" height=\"28\" bgcolor=\"#FFFFFF\"><a href=\"sickCase.aspx?registrationID2="+registrationID+"\">查看就诊情况</a><span class=\"STYLE8\"></span></td></tr>";
         
            }
            html += "<tr><td height=\"28\" colspan=\"5\" bgcolor=\"#F55B1A\"><div align=\"center\"><a href=\"Login.aspx\">返回</a></div></td></tr></table>";
            info.InnerHtml = html;
        }
    }
}