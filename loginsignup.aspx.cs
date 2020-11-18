using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ProjectDesignDemo
{
    public partial class loginsignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PanelLogin.Visible = true;
                PanelRegister.Visible = false;
                LoginButton.BackColor = System.Drawing.Color.White;
                LoginButton.ForeColor = System.Drawing.Color.Black;
                RegisterButton.BackColor = Color.FromName("#c23838");
                RegisterButton.ForeColor = Color.FromName("#fff");
                TPassword.Visible = false;
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            PanelLogin.Visible = true;
            PanelRegister.Visible = false;
            LoginButton.BackColor = System.Drawing.Color.White;
            LoginButton.ForeColor = System.Drawing.Color.Black;
            RegisterButton.BackColor = Color.FromName("#c23838");
            RegisterButton.ForeColor = Color.FromName("#fff");
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            PanelLogin.Visible = false;
            PanelRegister.Visible = true;
            RegisterButton.BackColor = System.Drawing.Color.White;
            RegisterButton.ForeColor = System.Drawing.Color.Black;
            LoginButton.BackColor = Color.FromName("#c23838");
            LoginButton.ForeColor = Color.FromName("#fff");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userindex.aspx");
        }

        protected void BSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");

            String insertSql = "INSERT INTO Patients(PatientName,FathersName,DateofBirth,Address,Village,PostOffice,PoliceStation,District,State,pincode,AadharNo,Phone,Email,Gender)" +
                "values (@PatientName,@FathersName,@DateofBirth,@Address,@Village,@PostOffice,@PoliceStation,@District,@State,@pincode,@AadharNo,@Phone,@Email,@Gender)";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = insertSql;

            SqlParameter PatientName = new SqlParameter("@PatientName",SqlDbType.VarChar,50);
            PatientName.Value = TBPname.Text.ToString();
            cmd.Parameters.Add(PatientName);

            SqlParameter FathersName = new SqlParameter("@FathersName", SqlDbType.VarChar, 50);
            FathersName.Value = TBFname.Text.ToString();
            cmd.Parameters.Add(FathersName);

            SqlParameter DOB = new SqlParameter("@DateofBirth", SqlDbType.Date);
            DOB.Value = TBDob.Text.ToString();
            cmd.Parameters.Add(DOB);

            SqlParameter Address = new SqlParameter("@Address", SqlDbType.VarChar,50);
            Address.Value = TBAddress.Text.ToString();
            cmd.Parameters.Add(Address);

            SqlParameter Village = new SqlParameter("@Village", SqlDbType.VarChar,50);
            Village.Value = TBVillage.Text.ToString();
            cmd.Parameters.Add(Village);

            SqlParameter PostOffice = new SqlParameter("@PostOffice", SqlDbType.VarChar,50);
            PostOffice.Value = TBPO.Text.ToString();
            cmd.Parameters.Add(PostOffice);

            SqlParameter PoliceStation = new SqlParameter("@PoliceStation", SqlDbType.VarChar,50);
            PoliceStation.Value = TBPS.Text.ToString();
            cmd.Parameters.Add(PoliceStation);

            SqlParameter District = new SqlParameter("@District", SqlDbType.VarChar,50);
            District.Value = TBDistrict.Text.ToString();
            cmd.Parameters.Add(District);

            SqlParameter State = new SqlParameter("@State", SqlDbType.VarChar,50);
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

            SqlParameter Gender = new SqlParameter("@Gender", SqlDbType.VarChar, 50);
            Gender.Value = RBGender.SelectedItem.ToString();
            cmd.Parameters.Add(Gender);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch(SqlException ex)
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

        protected void CalendarDob_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void CalendarDob_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date > DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.LightGray;
            }
        }

        
    }
}