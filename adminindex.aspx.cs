using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace ProjectDesignDemo
{
	public partial class adminindex : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");

            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT RecordId,OpdId,PatientName,DepartmentName,DoctorName,Status FROM Appointment JOIN Patients ON Appointment.OpdId = Patients.OpdNo and AppointmentDate = (SELECT CAST(GETDATE() AS Date))", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridTodayAppoint.DataSource = dt;
            GridTodayAppoint.DataBind();
        }

        protected void GridTodayAppoint_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "checkedup")
            {
                
            }
        }
    }
}