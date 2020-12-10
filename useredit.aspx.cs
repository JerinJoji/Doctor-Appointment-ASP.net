﻿using System;
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

            SqlCommand cmd = new SqlCommand("UPDATE Patients SET " +
                "PatientName='"+TBPname.Text+"', FathersName='"+TBFname.Text+"', Phone='"+TBPhone.Text+"', " +
                "Password='"+TBPASSWORD.Text+"', Address='"+TBAddress.Text+"',Village ='"+TBVillage.Text+"', " +
                "PostOffice='"+TBPO.Text+"', PoliceStation='"+TBPS.Text+"', District='"+TBDistrict.Text+"', " +
                "State='"+DropDownState.SelectedItem.Value+"', pincode='"+TBPincode.Text+"' WHERE OpdNo ="+ Convert.ToInt32(Session["opd"])+"", conn);
            conn.Open();
            /*cmd.Parameters.AddWithValue("@patientname",TBPname.Text);
            cmd.Parameters.AddWithValue("@Fathers", TBFname.Text);
            cmd.Parameters.AddWithValue("@phone", TBPhone.Text);
            cmd.Parameters.AddWithValue("@password", TBPASSWORD.Text);
            cmd.Parameters.AddWithValue("@address", TBAddress.Text);
            cmd.Parameters.AddWithValue("@village", TBVillage.Text);
            cmd.Parameters.AddWithValue("@post", TBPO.Text);
            cmd.Parameters.AddWithValue("@police", TBPS.Text);
            cmd.Parameters.AddWithValue("@district", TBDistrict.Text);
            cmd.Parameters.AddWithValue("@state", DropDownState.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@pin", TBPincode.Text);
            cmd.Parameters.AddWithValue("@opd",Convert.ToInt32(Session["opd"]));*/
            cmd.ExecuteNonQuery();
            conn.Close();
            Label1.Text = "Successful";

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
    }
}