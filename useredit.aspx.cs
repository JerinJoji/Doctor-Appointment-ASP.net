using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignDemo
{
    public partial class useredit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TBPname.Text = Session["Pname"].ToString();
            TBFname.Text = Session["Fname"].ToString();
            TBPhone.Text = Session["phone"].ToString();
            TBPASSWORD.Text = Session["password"].ToString();
            TBAddress.Text = Session["address"].ToString();
            TBVillage.Text = Session["village"].ToString();
            TBPO.Text = Session["post"].ToString();
            TBPS.Text = Session["police"].ToString();
            TBDistrict.Text = Session["district"].ToString();
            DropDownState.SelectedItem.Value = Session["state"].ToString();
            TBPincode.Text = Session["pincode"].ToString();
        }

        protected void BUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hp\\Documents\\Visual Studio 2019\\ProjectDesignDemo\\App_Data\\ProjectData.mdf;Integrated Security=True");
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "UPDATE Patients SET PatientName='" + TBPname.Text + "', FathersName='" + TBFname.Text + "', Phone='" + TBPhone.Text + "', Password='" + TBPASSWORD.Text + "', Address='" + TBAddress.Text + "',Village ='" + TBVillage.Text + "',PostOffice='" + TBPO.Text + "', PoliceStation='" + TBPS.Text + "', District='" + TBDistrict.Text + "',State='" + DropDownState.SelectedItem.Value + "', pincode='" + TBPincode.Text + "' WHERE OpdNo = " + Convert.ToInt32(Session["opdno"]);
            
            SqlCommand cmd = new SqlCommand(sql, conn);
            
            adapter.UpdateCommand = new SqlCommand(sql, conn);
            adapter.UpdateCommand.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();

            Session["Pname"] = TBPname.Text;
            Session["Fname"] = TBFname.Text;
            Session["phone"] = TBPhone.Text;
            Session["password"] = TBPASSWORD.Text;
            Session["address"] = TBAddress.Text;
            Session["village"] = TBVillage.Text;
            Session["post"] = TBPO.Text;
            Session["police"] = TBPS.Text;
            Session["district"] = TBDistrict.Text;
            Session["state"] = DropDownState.SelectedItem.Value;
            Session["pincode"] = TBPincode.Text;
            Response.Redirect("userindex.aspx");
        }

        protected void BCancel_Click(object sender, EventArgs e)
        {
           
        }
    }
}