using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                CalendarDoa.Visible = false;

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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarDoa.Visible)
            {
                CalendarDoa.Visible = false;
            }
            else
            {
                CalendarDoa.Visible = true;
            }
        }

        protected void CalendarDoa_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.Date < DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.LightGray;
            }
        }

        protected void btnAppointment_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void gotopaymentview_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void backtoappointview_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}