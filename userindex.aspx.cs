using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using System.Net;
using System.Net.Mail;

namespace ProjectDesignDemo
{
    public partial class demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                Panelbookappoint.Visible = true;
                Panelrecord.Visible = false;
                //CalendarDoa.Visible = false;
                GridAllViewPanel.Visible = true;
                GridDateViewPanel.Visible = false;
                GridDocSearch.Visible = false;
                GridDeptSearchPanel.Visible = false;
                ddlSearchdate.Visible = true;
                ddlSearchDept.Visible = true;
                ddlSearchDoctor.Visible = true;

                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");

                SqlCommand cmd = new SqlCommand("SELECT * from Patients where Email = @email and Password = @password", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@email", Session["email"]);
                cmd.Parameters.AddWithValue("@password", Session["password"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["opdno"] = dr.GetValue(0).ToString();
                    Session["Pname"] = dr.GetValue(1).ToString();
                    Session["Fname"] = dr.GetValue(2).ToString();
                    Session["DOB"] = dr.GetValue(3).ToString();
                    Session["address"] = dr.GetValue(4).ToString();
                    Session["district"] = dr.GetValue(8).ToString();
                    Session["state"] = dr.GetValue(9).ToString();
                    Session["pincode"] = dr.GetValue(10).ToString();
                    Session["aadhar"] = dr.GetValue(11).ToString();
                    Session["phone"] = dr.GetValue(12).ToString();
                }
                
                LDispOPD.Text = Session["opdno"].ToString();
                LDispPname.Text = Session["Pname"].ToString();
                LDispEmail.Text = Session["email"].ToString();
                LDispAadhar.Text = Session["aadhar"].ToString();
                LDispDob.Text = Session["DOB"].ToString();
                LDispPhone.Text = Session["phone"].ToString();
                Lloggeduser.Text = Session["Pname"].ToString();

                conn.Close();
            }
        }

        protected void Buttonbookappoint_Click(object sender, EventArgs e)
        {
            Panelbookappoint.Visible = true;
            Panelrecord.Visible = false;
        }

        protected void Buttonrecord_Click(object sender, EventArgs e)
        {
            Panelrecord.Visible = true;
            Panelbookappoint.Visible = false;
        }

        protected void Linklogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        /*protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarDoa.Visible)
            {
                CalendarDoa.Visible = false;
            }
            else
            {
                CalendarDoa.Visible = true;
            }
        }*/

        /*protected void CalendarDoa_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.Date < DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.LightGray;
            }
        }*/

        protected void btnAppointment_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");
            SqlCommand query = new SqlCommand("SELECT * FROM Appointment WHERE DoctorName = @docname and AppointmentDate = @appointdate", conn);
            query.Parameters.AddWithValue("@docname", ddlDoctor.SelectedItem.Value);
            query.Parameters.AddWithValue("@appointdate", TBAppointDate.Text);
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(query);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int appointcount = dt.Rows.Count;

            if(appointcount >= 3)
            {
                lblslotfull.Text = "The Slots are full for this Date. Please Choose Another Date";
            }
            else
            {
                MultiView1.ActiveViewIndex = 1;
                lbldepart.Text = ddlDept.SelectedItem.Value;
                lbldoc.Text = ddlDoctor.SelectedItem.Value;
                lbladate.Text = TBAppointDate.Text;
            }
        }

        protected void gotopaymentview_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void backtoappointview_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void ddlDept_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");
            SqlCommand query = new SqlCommand("SELECT DocName FROM Doctor JOIN Department ON Doctor.DepartId = Department.DeptId AND Department.DeptName = @ddlItem",conn);
            conn.Open();
            query.Parameters.AddWithValue("@ddlItem", ddlDept.SelectedItem.Value);
            SqlDataReader dr = query.ExecuteReader();
            ddlDoctor.Items.Clear();
            while (dr.Read())
            {
                ddlDoctor.Items.Add(dr.GetSqlString(0).ToString());
            }

        }

        /*protected void CalendarDoa_SelectionChanged(object sender, EventArgs e)
        {
            TBAppointDate.Text = CalendarDoa.SelectedDate.ToShortDateString();
            CalendarDoa.Visible = false;
        }*/

        protected void Btnpayonline_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");

            String insertAppoint = "INSERT INTO Appointment(OpdId,DoctorName,DepartmentName,AppointmentDate,Status)" +
                "values (@Opdno,@doctorname,@departname,@Appointdate,@Status)";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = insertAppoint;

            SqlParameter Opdno= new SqlParameter("@Opdno", SqlDbType.Int);
            Opdno.Value = Session["opdno"].ToString();
            cmd.Parameters.Add(Opdno);

            SqlParameter doctorname = new SqlParameter("@doctorname", SqlDbType.VarChar, 50);
            doctorname.Value = lbldoc.Text.ToString();
            cmd.Parameters.Add(doctorname);

            SqlParameter departname = new SqlParameter("@departname", SqlDbType.VarChar, 50);
            departname.Value = lbldepart.Text.ToString();
            cmd.Parameters.Add(departname);

            SqlParameter appointdate = new SqlParameter("@Appointdate", SqlDbType.Date);
            appointdate.Value = lbladate.Text.ToString();
            cmd.Parameters.Add(appointdate);

            SqlParameter status = new SqlParameter("@Status", SqlDbType.VarChar, 50);
            status.Value = "Appointed";
            cmd.Parameters.Add(status);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                SendConfirmMail();
                Btnpayonline.Enabled = false;
                Btnpaycounter.Enabled = false;
            }
            catch (SqlException ex)
            {
                string errorMessage = "Error in Registering Appointment";
                errorMessage += ex.Message;
                throw new Exception(errorMessage);
            }
            finally
            {
                con.Close();
            }
        }

        protected void Btnpaycounter_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");

            String insertAppoint = "INSERT INTO Appointment(OpdId,DoctorName,DepartmentName,AppointmentDate,Status)" +
                "values (@Opdno,@doctorname,@departname,@Appointdate,@Status)";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = insertAppoint;

            SqlParameter Opdno = new SqlParameter("@Opdno", SqlDbType.Int);
            Opdno.Value = Session["opdno"].ToString();
            cmd.Parameters.Add(Opdno);

            SqlParameter doctorname = new SqlParameter("@doctorname", SqlDbType.VarChar, 50);
            doctorname.Value = lbldoc.Text.ToString();
            cmd.Parameters.Add(doctorname);

            SqlParameter departname = new SqlParameter("@departname", SqlDbType.VarChar, 50);
            departname.Value = lbldepart.Text.ToString();
            cmd.Parameters.Add(departname);

            SqlParameter appointdate = new SqlParameter("@Appointdate", SqlDbType.Date);
            appointdate.Value = lbladate.Text.ToString();
            cmd.Parameters.Add(appointdate);

            SqlParameter status = new SqlParameter("@Status", SqlDbType.VarChar, 50);
            status.Value = "Not Confirmed";
            cmd.Parameters.Add(status);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                SendPayCounterMail();
                Btnpayonline.Enabled = false;
                Btnpaycounter.Enabled = false;
            }
            catch (SqlException ex)
            {
                string errorMessage = "Error in Registering Appointment";
                errorMessage += ex.Message;
                throw new Exception(errorMessage);
            }
            finally
            {
                con.Close();
            }
        }

        protected void ddlSearchdate_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridAllViewPanel.Visible = false;
            GridDateViewPanel.Visible = true;
            GridDeptSearchPanel.Visible = false;
            GridDocSearch.Visible = false;
            ddlSearchDept.Visible = false;
            ddlSearchDoctor.Visible = false;
            ddlSearchdate.Visible = true;
        }

        protected void ddlSearchDoctor_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridAllViewPanel.Visible = false;
            GridDateViewPanel.Visible = false;
            GridDeptSearchPanel.Visible = false;
            GridDocSearch.Visible = true;
            ddlSearchdate.Visible = false;
            ddlSearchDept.Visible = false;
            ddlSearchDoctor.Visible = true;
        }

        protected void ddlSearchDept_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridAllViewPanel.Visible = false;
            GridDateViewPanel.Visible = false;
            GridDeptSearchPanel.Visible = true;
            GridDocSearch.Visible = false;
            ddlSearchDoctor.Visible = false;
            ddlSearchdate.Visible = false;
            ddlSearchDept.Visible = true;
        }

        protected void BtnRefresh_Click(object sender, EventArgs e)
        {
            GridAllViewPanel.Visible = true;
            GridDateViewPanel.Visible = false;
            GridDocSearch.Visible = false;
            GridDeptSearchPanel.Visible = false;
            ddlSearchdate.Visible = true;
            ddlSearchDept.Visible = true;
            ddlSearchDoctor.Visible = true;
        }

        protected void LLHeading_Click(object sender, EventArgs e)
        {
            Response.Redirect("userindex.aspx");
        }

        private void SendConfirmMail()
        {
            string filename = Server.MapPath("ConfirmAppoint.html");
            string mailbody = System.IO.File.ReadAllText(filename);
            mailbody = mailbody.Replace("##Opdno##", Session["opdno"].ToString());
            mailbody = mailbody.Replace("##Name##", Session["Pname"].ToString());
            mailbody = mailbody.Replace("##Phone##", Session["phone"].ToString());
            mailbody = mailbody.Replace("##DeptName##", lbldepart.Text);
            mailbody = mailbody.Replace("##DoctorName##", lbldoc.Text);
            mailbody = mailbody.Replace("##AppointDate##", lbladate.Text);

            string to = Session["email"].ToString();
            string from = "jerinkjoji@gmail.com";
            MailMessage message = new MailMessage(from, to);
            message.Subject = "Auto Response Email";
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            System.Net.NetworkCredential basicCredential = new System.Net.NetworkCredential("jerinkjoji@gmail.com", "its#commercialGmail");
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential;
            try
            {
                client.Send(message);
                lblSuccess.Text = "Appointment Confirmed. Check Your Records/Email For Confirmation";
                lblSuccess.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                lblSuccess.Text = ex.Message;
            }
        }

        private void SendPayCounterMail()
        {
            string filename = Server.MapPath("PayCounterMail.html");
            string mailbody = System.IO.File.ReadAllText(filename);
            mailbody = mailbody.Replace("##Opdno##", Session["opdno"].ToString());
            mailbody = mailbody.Replace("##Name##", Session["Pname"].ToString());
            mailbody = mailbody.Replace("##Phone##", Session["phone"].ToString());
            mailbody = mailbody.Replace("##DeptName##", lbldepart.Text);
            mailbody = mailbody.Replace("##DoctorName##", lbldoc.Text);
            mailbody = mailbody.Replace("##AppointDate##", lbladate.Text);

            string to = Session["email"].ToString();
            string from = "jerinkjoji@gmail.com";
            MailMessage message = new MailMessage(from, to);
            message.Subject = "Auto Response Email";
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            System.Net.NetworkCredential basicCredential = new System.Net.NetworkCredential("jerinkjoji@gmail.com", "its#commercialGmail");
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential;
            try
            {
                client.Send(message);
                lblSuccess.Text = "Appointment Recorded, Not Confirmed. Check Mail for Confirmation.";
                lblSuccess.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                lblSuccess.Text = ex.Message;
            }
        }
    }
}