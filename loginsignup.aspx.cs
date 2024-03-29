﻿using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace ProjectDesignDemo
{
    public partial class loginsignup : System.Web.UI.Page
    {
        static String activationcode;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PanelLogin.Visible = true;
                PanelRegister.Visible = false;
                ActivationPanel.Visible = false;
                LoginButton.BackColor = System.Drawing.Color.White;
                LoginButton.ForeColor = System.Drawing.Color.Black;
                RegisterButton.BackColor = Color.FromName("#c23838");
                RegisterButton.ForeColor = Color.FromName("#fff");
                CalDOB.Visible = false;
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            PanelLogin.Visible = true;
            PanelRegister.Visible = false;
            ActivationPanel.Visible = false;
            LoginButton.BackColor = System.Drawing.Color.White;
            LoginButton.ForeColor = System.Drawing.Color.Black;
            RegisterButton.BackColor = Color.FromName("#c23838");
            RegisterButton.ForeColor = Color.FromName("#fff");
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            PanelLogin.Visible = false;
            PanelRegister.Visible = true;
            ActivationPanel.Visible = false;
            RegisterButton.BackColor = System.Drawing.Color.White;
            RegisterButton.ForeColor = System.Drawing.Color.Black;
            LoginButton.BackColor = Color.FromName("#c23838");
            LoginButton.ForeColor = Color.FromName("#fff");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TEmail.Text == "" || TPassword.Text == "")
            {
                lbloginmsg.Text = "Field Can't Be Empty";
                lbloginmsg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                if (TEmail.Text == "admin@khfh.com" && TPassword.Text == "admin")
                {
                    Session["logout"] = "true";
                    Response.Redirect("adminindex.aspx");
                }
                else
                {
                    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");

                    SqlCommand cmd = new SqlCommand("SELECT * from Patients where Email = @email and Password = @password", con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@email", TEmail.Text);
                    cmd.Parameters.AddWithValue("@password", TPassword.Text);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        Session["email"] = TEmail.Text;
                        Session["password"] = TPassword.Text;
                        Session["logout"] = "true";
                        Response.Redirect("userindex.aspx");
                    }
                    else
                    {
                        lbloginmsg.Text = "Incorrect Email/Password";
                        lbloginmsg.ForeColor = System.Drawing.Color.Red;
                    }
                    con.Close();
                }
            }
        }

        protected void BSubmit_Click(object sender, EventArgs e)
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
                Random random = new Random();
                activationcode = random.Next(100000, 999999).ToString();
                sendcode();
                PanelLogin.Visible = false;
                PanelRegister.Visible = false;
                ActivationPanel.Visible = true;
                RegisterButton.BackColor = System.Drawing.Color.White;
                RegisterButton.ForeColor = System.Drawing.Color.Black;
                LoginButton.BackColor = Color.FromName("#c23838");
                LoginButton.ForeColor = Color.FromName("#fff");
            }
        }

        protected void BLCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void BCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        private void sendcode()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("jerinkjoji@gmail.com","its#commercialGmail");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Doctor's Appointment Activation Code";
            msg.Body = "Dear User, Your Activation code is " + activationcode + "\n\n\nEnter the above activation code for Creating an account. \n\nThank you for Choosing Our Hospital.";
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

        protected void BtnVerify_Click(object sender, EventArgs e)
        {
            if(activationcode == TBCode.Text)
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");

                String insertSql = "INSERT INTO Patients(PatientName,FathersName,DateofBirth,Address,Village,PostOffice,PoliceStation,District,State,pincode,AadharNo,Phone,Email,Gender,Password)" +
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
                Village.Value = TBVillage.Text.ToString();
                cmd.Parameters.Add(Village);

                SqlParameter PostOffice = new SqlParameter("@PostOffice", SqlDbType.VarChar, 50);
                PostOffice.Value = TBPO.Text.ToString();
                cmd.Parameters.Add(PostOffice);

                SqlParameter PoliceStation = new SqlParameter("@PoliceStation", SqlDbType.VarChar, 50);
                PoliceStation.Value = TBPS.Text.ToString();
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
                AadharNo.Value = TBAadhar.Text.ToString();
                cmd.Parameters.Add(AadharNo);

                SqlParameter Phone = new SqlParameter("@Phone", SqlDbType.BigInt);
                Phone.Value = TBPhone.Text.ToString();
                cmd.Parameters.Add(Phone);

                SqlParameter Email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
                Email.Value = TBEmail.Text.ToString();
                cmd.Parameters.Add(Email);

                SqlParameter Password = new SqlParameter("@Password", SqlDbType.VarChar, 50);
                Password.Value = TBPASSWORD.Text.ToString();
                cmd.Parameters.Add(Password);

                SqlParameter Gender = new SqlParameter("@Gender", SqlDbType.VarChar, 50);
                Gender.Value = RBGender.SelectedItem.ToString();
                cmd.Parameters.Add(Gender);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Session["email"] = TBEmail.Text;
                    Session["password"] = TBPASSWORD.Text;
                    Session["logout"] = "true";
                    Response.Redirect("userindex.aspx");
                
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
            else
            {
                lblcodecheck.Text = "Invalid Code";
            }
        }

        protected void BtnCodeBack_Click(object sender, EventArgs e)
        {
            PanelLogin.Visible = false;
            PanelRegister.Visible = true;
            ActivationPanel.Visible = false;
            RegisterButton.BackColor = System.Drawing.Color.White;
            RegisterButton.ForeColor = System.Drawing.Color.Black;
            LoginButton.BackColor = Color.FromName("#c23838");
            LoginButton.ForeColor = Color.FromName("#fff");
        }

        protected void IBDOB_Click(object sender, ImageClickEventArgs e)
        {
            if (CalDOB.Visible)
                CalDOB.Visible = false;
            else
                CalDOB.Visible = true;
        }

        protected void CalDOB_SelectionChanged(object sender, EventArgs e)
        {
            TBDob.Text = CalDOB.SelectedDate.ToString("yyyy-MM-dd");
            CalDOB.Visible = false;
        }

        protected void CalDOB_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date > DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Gray;
            }
        }
    }
}