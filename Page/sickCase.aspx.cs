using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Page
{
    public partial class sickCase : System.Web.UI.Page
    {
        private SqlConnection myConnection;
        private SqlCommand myCommand;

        private DataTable DT = new DataTable();
        private SqlDataAdapter SDA = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            myConnection = new SqlConnection("server=SISIANDL; database=Database1; integrated security=SSPI");
            //  ("server=fyscu-20150521p; database=WebTestDB01; integrated security=SSPI");
            //("server=WY-PC; database=BS_TestDB; integrated security=SSPI");
            //("server=ALIENWARE-PC\\RICHARDSERVER; database=BS_TestDB; integrated security=SSPI");
            myConnection.Open();
            string Time = "";
            string patient_ID = "";
            string patient_name = "";
            string registration_ID = "";
            string doc_ID = "";
            string doc_name = "";
            string departmentName = "";
            string textArea = "";
            if (!IsPostBack &&string.IsNullOrEmpty(Request.QueryString["registrationID2"]))
            {
                 Time = Request.QueryString["time"];
                 patient_ID = Request.QueryString["patientID"];
                 patient_name = Request.QueryString["patientName"];
                 registration_ID = Request.QueryString["RegistrationID"];
                 doc_ID = Request.QueryString["docID"];

                string Command = "select DoctorName,BelongDepartmentName from [Doctor] where DoctorID=" + doc_ID;
                myCommand = new SqlCommand(Command, myConnection);
                myCommand.ExecuteNonQuery();
                SDA.SelectCommand = myCommand;
                SDA.Fill(DT);
                doc_name = DT.Rows[0][0].ToString();
                departmentName = DT.Rows[0][1].ToString();
                registrationID.Value = registration_ID;

            }
            
            if (!string.IsNullOrEmpty(Request.QueryString["registrationID2"]))
            {
                 patient_name = (string)Session["userName"];
                 patient_ID = (string)Session["userID"];
                string registrationID = Request.QueryString["registrationID2"];

                string Command = "select RegistrationTime,DoctorID from [Registration] where RegistrationID=" + registrationID;
                myCommand = new SqlCommand(Command, myConnection);
                myCommand.ExecuteNonQuery();
                SDA.SelectCommand = myCommand;
                SDA.Fill(DT);
                 Time = DT.Rows[0][0].ToString();
                 doc_ID = DT.Rows[0][1].ToString();

                Command = "select DoctorName,BelongDepartmentName from [Doctor] where DoctorID=" + doc_ID;
                myCommand = new SqlCommand(Command, myConnection);
                myCommand.ExecuteNonQuery();
                SqlDataAdapter SDA2 = new SqlDataAdapter();
                DataTable DT2 = new DataTable();
                SDA2.SelectCommand = myCommand;
                SDA2.Fill(DT2);
                 doc_name = DT2.Rows[0][0].ToString();
                departmentName = DT2.Rows[0][1].ToString();

                Command = "select treatResult from [TreatInformation] where RegistrationID=" + registrationID;
                myCommand = new SqlCommand(Command, myConnection);
                myCommand.ExecuteNonQuery();
                SqlDataAdapter SDA3 = new SqlDataAdapter();
                DataTable DT3 = new DataTable();
                SDA3.SelectCommand = myCommand;
                SDA3.Fill(DT3);
                try
                {
                    textArea = DT3.Rows[0][0].ToString();
                }
                catch
                {
                    textArea = "暂无";
                }
                info.InnerText = textArea;
                patientFlag.Value = "true";
                CheckButton.Text = "返回";
            }

            patientID.InnerText = patient_ID;
            patientName.InnerText = patient_name;
            docName.InnerText = doc_name;
            time.InnerText = Time;
            department.InnerText = departmentName;
            
            docID.Value = doc_ID;
        }
        protected void CheckButton_Click(object sender, EventArgs e)
        {
            if (patientFlag.Value.Equals("false"))
            {
                string registrateId = registrationID.Value;
                string treatReslut = info.InnerText;
                string Command = "insert into [TreatInformation] (RegistrationID, treatResult) values ('" + registrateId + "', '" + treatReslut + "')";
                myCommand = new SqlCommand(Command, myConnection);
                myCommand.ExecuteNonQuery();

                //用来更新该预约是否使用
                Command = "update Registration Set isUsed=1 where RegistrationID=" + registrateId;
                myCommand = new SqlCommand(Command, myConnection);
                myCommand.ExecuteNonQuery();
                Response.Redirect("AddPatient.aspx?docID=" + docID.Value);
            }
            else
            {
                Response.Redirect("AlreadyRegistrated.aspx");
            }
        }
    }
}