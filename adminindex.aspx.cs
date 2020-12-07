using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace ProjectDesignDemo
{
	public partial class adminindex : System.Web.UI.Page
	{
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
		{
            TodayAppointPanel.Visible = true;
            RecordsPanel.Visible = false;
            PatientsPanel.Visible = false;
            ddlDepart.Enabled = false;
            ddlDoctorlist.Enabled = false;
            LoadPage();
            LoadRecords();
            LoadPatients();
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

            if (e.CommandName == "deleterow")
            {
                int row = Convert.ToInt32(e.CommandArgument.ToString());
                string recordid = GridTodayAppoint.Rows[row].Cells[0].Text;
                SqlCommand cmd = new SqlCommand("DELETE FROM Appointment WHERE RecordId=@recordid", conn);
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
            BSearch.Enabled = true;
            BSRefresh.Enabled = false;
            BSRefresh.BackColor = System.Drawing.Color.White;
            BSRefresh.ForeColor = System.Drawing.Color.DarkGray;
            BSearch.BackColor = Color.FromName("#c23838");
            BSearch.ForeColor = Color.FromName("#fff");
        }

        private void LoadRecords()
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT RecordId,OpdId,PatientName,DepartmentName,DoctorName,AppointmentDate,Status FROM Appointment JOIN Patients ON Appointment.OpdId = Patients.OpdNo ORDER BY Appointment.AppointmentDate DESC", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewRecords.DataSource = dt;
            GridViewRecords.DataBind();
            conn.Close();
            BRecSearch.Enabled = true;
            BRecRefresh.Enabled = false;
            BRecRefresh.BackColor = System.Drawing.Color.White;
            BRecRefresh.ForeColor = System.Drawing.Color.DarkGray;
            BRecSearch.BackColor = Color.FromName("#c23838");
            BRecSearch.ForeColor = Color.FromName("#fff");
        }

        private void LoadPatients()
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT OpdNo,PatientName,FathersName,Phone,Email,DateofBirth,Gender,District,State,pincode,AadharNo FROM Patients", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            UserrecordsGridView.DataSource = dt;
            UserrecordsGridView.DataBind();
            conn.Close();
            BPSearch.Enabled = true;
            BPRefresh.Enabled = false;
            BPRefresh.BackColor = System.Drawing.Color.White;
            BPRefresh.ForeColor = System.Drawing.Color.DarkGray;
            BPSearch.BackColor = Color.FromName("#c23838");
            BPSearch.ForeColor = Color.FromName("#fff");
        }

        protected void LLHeading_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminindex.aspx");
        }

        protected void BSearch_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand query = new SqlCommand("SELECT RecordId,OpdId,PatientName,DepartmentName,DoctorName,Status FROM Appointment JOIN Patients ON Appointment.OpdId = Patients.OpdNo and DoctorName like '%'+@Docname+'%' and DepartmentName like '%'+@Deptname+'%' and OpdId like'%'+@opd+'%' and PatientName like '%'+@record+'%' and AppointmentDate = (SELECT CAST(GETDATE() AS Date))", conn);
            query.Parameters.AddWithValue("Docname",TBSDoc.Text);
            query.Parameters.AddWithValue("Deptname", TBSDept.Text);
            query.Parameters.AddWithValue("opd", TBSOpd.Text);
            query.Parameters.AddWithValue("record", TBSName.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(query);
            sda.Fill(dt);
            GridTodayAppoint.DataSource = dt;
            GridTodayAppoint.DataBind();
            BSRefresh.Enabled = true;
            BSearch.Enabled = false;
            BSearch.BackColor = System.Drawing.Color.White;
            BSearch.ForeColor = System.Drawing.Color.DarkGray;
            BSRefresh.BackColor = Color.FromName("#c23838");
            BSRefresh.ForeColor = Color.FromName("#fff");
            TodayAppointPanel.Visible = true;
            RecordsPanel.Visible = false;
            PatientsPanel.Visible = false;
        }

        protected void BSRefresh_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand query = new SqlCommand("SELECT RecordId,OpdId,PatientName,DepartmentName,DoctorName,Status FROM Appointment JOIN Patients ON Appointment.OpdId = Patients.OpdNo and DoctorName like '%'+@Docname+'%' and DepartmentName like '%'+@Deptname+'%' and OpdId like'%'+@opd+'%' and PatientName like '%'+@record+'%' and AppointmentDate = (SELECT CAST(GETDATE() AS Date))", conn);
            query.Parameters.AddWithValue("Docname", "");
            query.Parameters.AddWithValue("Deptname", "");
            query.Parameters.AddWithValue("opd", "");
            query.Parameters.AddWithValue("record","");
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(query);
            sda.Fill(dt);
            GridTodayAppoint.DataSource = dt;
            GridTodayAppoint.DataBind();
            BSearch.Enabled = true;
            BSRefresh.Enabled = false;
            BSRefresh.BackColor = System.Drawing.Color.White;
            BSRefresh.ForeColor = System.Drawing.Color.DarkGray;
            BSearch.BackColor = Color.FromName("#c23838");
            BSearch.ForeColor = Color.FromName("#fff");
            TodayAppointPanel.Visible = true;
            RecordsPanel.Visible = false;
            PatientsPanel.Visible = false;
        }

        protected void BRecSearch_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand query = new SqlCommand("SELECT RecordId,OpdId,PatientName,DepartmentName,DoctorName,AppointmentDate,Status FROM Appointment JOIN Patients ON Appointment.OpdId = Patients.OpdNo and DoctorName like '%'+@Docname+'%' and DepartmentName like '%'+@Deptname+'%' and OpdId like'%'+@opd+'%' and PatientName like '%'+@record+'%'", conn);
            query.Parameters.AddWithValue("Docname", TBRecDoc.Text);
            query.Parameters.AddWithValue("Deptname", TBRecDept.Text);
            query.Parameters.AddWithValue("opd", TBRecOpd.Text);
            query.Parameters.AddWithValue("record", TBRecName.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(query);
            sda.Fill(dt);
            GridViewRecords.DataSource = dt;
            GridViewRecords.DataBind();
            BRecRefresh.Enabled = true;
            BRecSearch.Enabled = false;
            BRecSearch.BackColor = System.Drawing.Color.White;
            BRecSearch.ForeColor = System.Drawing.Color.DarkGray;
            BRecRefresh.BackColor = Color.FromName("#c23838");
            BRecRefresh.ForeColor = Color.FromName("#fff");
            TodayAppointPanel.Visible = false;
            RecordsPanel.Visible = true;
            PatientsPanel.Visible = false;
        }

        protected void BRecRefresh_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand query = new SqlCommand("SELECT RecordId,OpdId,PatientName,DepartmentName,DoctorName,AppointmentDate,Status FROM Appointment JOIN Patients ON Appointment.OpdId = Patients.OpdNo and DoctorName like '%'+@Docname+'%' and DepartmentName like '%'+@Deptname+'%' and OpdId like'%'+@opd+'%' and PatientName like '%'+@record+'%'", conn);
            query.Parameters.AddWithValue("Docname", "");
            query.Parameters.AddWithValue("Deptname", "");
            query.Parameters.AddWithValue("opd", "");
            query.Parameters.AddWithValue("record", "");
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(query);
            sda.Fill(dt);
            GridViewRecords.DataSource = dt;
            GridViewRecords.DataBind();
            BRecSearch.Enabled = true;
            BRecRefresh.Enabled = false;
            BRecRefresh.BackColor = System.Drawing.Color.White;
            BRecRefresh.ForeColor = System.Drawing.Color.DarkGray;
            BRecSearch.BackColor = Color.FromName("#c23838");
            BRecSearch.ForeColor = Color.FromName("#fff");
            TodayAppointPanel.Visible = false;
            RecordsPanel.Visible = true;
            PatientsPanel.Visible = false;
        }

        protected void BTodayAppoint_Click(object sender, EventArgs e)
        {
            TodayAppointPanel.Visible = true;
            RecordsPanel.Visible = false;
            PatientsPanel.Visible = false;
        }

        protected void BAllRecord_Click(object sender, EventArgs e)
        {
            TodayAppointPanel.Visible = false;
            RecordsPanel.Visible = true;
            PatientsPanel.Visible = false;
        }

        protected void Linklogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void BPatients_Click(object sender, EventArgs e)
        {
            TodayAppointPanel.Visible = false;
            RecordsPanel.Visible = false;
            PatientsPanel.Visible = true;
        }

        protected void BPSearch_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand query = new SqlCommand("SELECT OpdNo,PatientName,FathersName,Phone,Email,DateofBirth,Gender,District,State,pincode,AadharNo FROM Patients WHERE OpdNo like '%'+@OpdNo+'%' and PatientName like '%'+@Patientname+'%'", conn);
            query.Parameters.AddWithValue("Opdno", TBSOpdno.Text);
            query.Parameters.AddWithValue("Patientname", TBName.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(query);
            sda.Fill(dt);
            UserrecordsGridView.DataSource = dt;
            UserrecordsGridView.DataBind();
            BPRefresh.Enabled = true;
            BPSearch.Enabled = false;
            BPSearch.BackColor = System.Drawing.Color.White;
            BPSearch.ForeColor = System.Drawing.Color.DarkGray;
            BPRefresh.BackColor = Color.FromName("#c23838");
            BPRefresh.ForeColor = Color.FromName("#fff");
            TodayAppointPanel.Visible = false;
            RecordsPanel.Visible = false;
            PatientsPanel.Visible = true;
        }

        protected void BPRefresh_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand query = new SqlCommand("SELECT OpdNo,PatientName,FathersName,Phone,Email,DateofBirth,Gender,District,State,pincode,AadharNo FROM Patients WHERE OpdNo like '%'+@OpdNo+'%' and PatientName like '%'+@Patientname+'%'", conn);
            query.Parameters.AddWithValue("Opdno", "");
            query.Parameters.AddWithValue("Patientname", "");
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(query);
            sda.Fill(dt);
            UserrecordsGridView.DataSource = dt;
            UserrecordsGridView.DataBind();
            BPRefresh.Enabled = false;
            BPSearch.Enabled = true;
            BPRefresh.BackColor = System.Drawing.Color.White;
            BPRefresh.ForeColor = System.Drawing.Color.DarkGray;
            BPSearch.BackColor = Color.FromName("#c23838");
            BPSearch.ForeColor = Color.FromName("#fff");
            TodayAppointPanel.Visible = false;
            RecordsPanel.Visible = false;
            PatientsPanel.Visible = true;
        }

        
        protected void BCheckID_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * from Patients where OpdNo = @opd", conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@opd", TBOPD.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                ddlDepart.Enabled = true;
                ddlDoctorlist.Enabled = true;
                lblCheckId.Text = "";
            }
            else
            {
                lblCheckId.Text = "No Records Found";
            }
            conn.Close();
        }

        protected void btnAppointment_Click(object sender, EventArgs e)
        {
            String insertAppoint = "INSERT INTO Appointment(OpdId,DoctorName,DepartmentName,AppointmentDate,Status)" +
                "values (@Opdno,@doctorname,@departname,@Appointdate,@Status)";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = insertAppoint;

            SqlParameter Opdno = new SqlParameter("@Opdno", SqlDbType.Int);
            Opdno.Value = TBOPD.Text;
            cmd.Parameters.Add(Opdno);

            SqlParameter doctorname = new SqlParameter("@doctorname", SqlDbType.VarChar, 50);
            doctorname.Value = ddlDoctorlist.SelectedItem.Value;
            cmd.Parameters.Add(doctorname);

            SqlParameter departname = new SqlParameter("@departname", SqlDbType.VarChar, 50);
            departname.Value = ddlDepart.SelectedItem.Value;
            cmd.Parameters.Add(departname);

            SqlParameter appointdate = new SqlParameter("@Appointdate", SqlDbType.Date);
            appointdate.Value = DateTime.Now;
            cmd.Parameters.Add(appointdate);

            SqlParameter status = new SqlParameter("@Status", SqlDbType.VarChar, 50);
            status.Value = "Emergency Appointed";
            cmd.Parameters.Add(status);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
                LoadPage();
                LoadRecords();
            }
            catch (SqlException ex)
            {
                string errorMessage = "Error in Registering Appointment";
                errorMessage += ex.Message;
                throw new Exception(errorMessage);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void ddlDepart_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlDepart.Enabled = true;
            ddlDoctorlist.Enabled = true;
            SqlCommand query = new SqlCommand("SELECT DocName FROM Doctor JOIN Department ON Doctor.DepartId = Department.DeptId AND Department.DeptName = @ddlItem", conn);
            conn.Open();
            query.Parameters.AddWithValue("@ddlItem", ddlDepart.SelectedItem.Value);
            SqlDataReader dr = query.ExecuteReader();
            ddlDoctorlist.Items.Clear();
            while (dr.Read())
            {
                ddlDoctorlist.Items.Add(dr.GetSqlString(0).ToString());
            }
        }

        protected void LLCreateAcc_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminUserCreate.aspx");
        }

        protected void GridTodayAppoint_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }
    }
}