using System;
using System.Collections.Generic;
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
            Panelbookappoint.Visible = false;
            Panelrecord.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Paneldoctorlist.Visible = true;
            Panelbookappoint.Visible = false;
            Panelrecord.Visible = false;
        }

        protected void Buttonbookappoint_Click(object sender, EventArgs e)
        {
            Panelbookappoint.Visible = true;
            Paneldoctorlist.Visible = false;
            Panelrecord.Visible = false;
        }

        protected void Buttonrecord_Click(object sender, EventArgs e)
        {
            Panelrecord.Visible = true;
            Paneldoctorlist.Visible = false;
            Panelbookappoint.Visible = false;
        }
    }
}