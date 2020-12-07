using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignDemo
{
    public partial class AdminUserCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BCreate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");

            SqlCommand checkcmd = new SqlCommand("Select * from Patients where Email=@email", con);
            con.Open();
            checkcmd.Parameters.AddWithValue("@email", TBEmail.Text);
            SqlDataReader checkdr = checkcmd.ExecuteReader();
            if (checkdr.HasRows)
            {
                lblerroremail.Text = "Already Registerd Email. Use New Email.";
            }
            else
            {
                checkdr.Close();
                String insertSql = "INSERT INTO Patients(PatientName,FathersName,DateofBirth,Address,Village,PostOffice,PoliceStation,District,State,pincode,AadharNo,Phone,Email,Gender, Password)" +
                "values (@PatientName,@FathersName,@DateofBirth,@Address,@Village,@PostOffice,@PoliceStation,@District,@State,@pincode,@AadharNo,@Phone,@Email,@Gender,@Password)";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = insertSql;

                SqlParameter PatientName = new SqlParameter("@PatientName", SqlDbType.VarChar, 50);
                PatientName.Value = TBPname.Text.ToString();
                cmd.Parameters.Add(PatientName);

                SqlParameter FathersName = new SqlParameter("@FathersName", SqlDbType.VarChar, 50);
                FathersName.Value = TBFname.Text.ToString();
                cmd.Parameters.Add(FathersName);

                SqlParameter DOB = new SqlParameter("@DateofBirth", SqlDbType.Date);
                DOB.Value = TBDob.Text.ToString();
                cmd.Parameters.Add(DOB);

                SqlParameter Address = new SqlParameter("@Address", SqlDbType.VarChar, 50);
                Address.Value = TBAddress.Text.ToString();
                cmd.Parameters.Add(Address);

                SqlParameter Village = new SqlParameter("@Village", SqlDbType.VarChar, 50);
                Village.Value = "";
                cmd.Parameters.Add(Village);

                SqlParameter PostOffice = new SqlParameter("@PostOffice", SqlDbType.VarChar, 50);
                PostOffice.Value = "";
                cmd.Parameters.Add(PostOffice);

                SqlParameter PoliceStation = new SqlParameter("@PoliceStation", SqlDbType.VarChar, 50);
                PoliceStation.Value = "";
                cmd.Parameters.Add(PoliceStation);

                SqlParameter District = new SqlParameter("@District", SqlDbType.VarChar, 50);
                District.Value = TBDistrict.Text.ToString();
                cmd.Parameters.Add(District);

                SqlParameter State = new SqlParameter("@State", SqlDbType.VarChar, 50);
                State.Value = DropDownState.SelectedItem.ToString();
                cmd.Parameters.Add(State);

                SqlParameter pincode = new SqlParameter("@pincode", SqlDbType.VarChar, 50);
                pincode.Value = TBPincode.Text.ToString();
                cmd.Parameters.Add(pincode);

                SqlParameter AadharNo = new SqlParameter("@AadharNo", SqlDbType.VarChar, 50);
                AadharNo.Value = "";
                cmd.Parameters.Add(AadharNo);

                SqlParameter Phone = new SqlParameter("@Phone", SqlDbType.BigInt);
                Phone.Value = TBPhone.Text.ToString();
                cmd.Parameters.Add(Phone);

                SqlParameter Email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
                Email.Value = TBEmail.Text.ToString();
                cmd.Parameters.Add(Email);

                SqlParameter Password = new SqlParameter("@Password", SqlDbType.VarChar, 50);
                Password.Value = "admincreated123";
                cmd.Parameters.Add(Password);

                SqlParameter Gender = new SqlParameter("@Gender", SqlDbType.VarChar, 50);
                Gender.Value = RBGender.SelectedItem.ToString();
                cmd.Parameters.Add(Gender);

                try
                {
                    cmd.ExecuteNonQuery();
                    sendUserDetails();
                    Response.Redirect("adminindex.aspx");
                }
                catch (SqlException ex)
                {
                    string errorMessage = "Error in Registering User";
                    errorMessage += ex.Message;
                    throw new Exception(errorMessage);
                }
                finally
                {
                    con.Close();
                }
            }
        }

        private void sendUserDetails()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("jerinkjoji@gmail.com", "its#commercialGmail");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Admin Created Account - Doctor's Appointment";
            msg.Body = "Dear User, Your Account is Created by ADMIN and Some Information are to be filled. \n\n\n " +
                "LOGIN ID: \n\n Username: " + TBEmail.Text+ "\nPassword: admincreated123 \n\n Please Fill the Details and Change the password for Security.";
            string toaddress = TBEmail.Text;
            msg.To.Add(toaddress);
            string fromaddress = "jerinkjoji@gmail.com";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }
        }

        protected void BCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminindex.aspx");
        }
    }
}