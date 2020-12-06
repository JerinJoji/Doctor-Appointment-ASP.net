using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignDemo
{
    public partial class AppointReceipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");
            SqlCommand query = new SqlCommand("SELECT OpdId, RecordId,PatientName, DoctorName,DepartmentName,AppointmentDate FROM Appointment JOIN Patients ON Appointment.OpdId = Patients.OpdNo and RecordId = @recordid", conn);
            conn.Open();
            query.Parameters.AddWithValue("@record", Session["recordid"]);
            SqlDataAdapter sda = new SqlDataAdapter(query);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("AppointReceipt.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("ReportData", dt));
            ReportViewer1.LocalReport.Refresh();
        }
    }
}