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
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
		{
            LoadPage();
        }

        protected void GridTodayAppoint_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "checkedup")
            {
                int row = Convert.ToInt32(e.CommandArgument.ToString());
                string recordid = GridTodayAppoint.Rows[row].Cells[0].Text;
                SqlCommand cmd = new SqlCommand("UPDATE Appointment SET Status = 'Checked Up' WHERE RecordId=@recordid",conn);
                cmd.Parameters.AddWithValue("@recordid", recordid);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                LoadPage();
                
            }

            if (e.CommandName == "appoint")
            {
                int row = Convert.ToInt32(e.CommandArgument.ToString());
                string recordid = GridTodayAppoint.Rows[row].Cells[0].Text;
                SqlCommand cmd = new SqlCommand("UPDATE Appointment SET Status = 'Appointed' WHERE RecordId=@recordid", conn);
                cmd.Parameters.AddWithValue("@recordid", recordid);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                LoadPage();

            }
        }

        private void LoadPage()
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT RecordId,OpdId,PatientName,DepartmentName,DoctorName,Status FROM Appointment JOIN Patients ON Appointment.OpdId = Patients.OpdNo and AppointmentDate = (SELECT CAST(GETDATE() AS Date))", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridTodayAppoint.DataSource = dt;
            GridTodayAppoint.DataBind();
            conn.Close();
        }

        protected void LLHeading_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminindex.aspx");
        }
    }
}