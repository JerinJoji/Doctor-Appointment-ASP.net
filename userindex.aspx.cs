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
            Panelbookappoint.Visible = true;
            Panelrecord.Visible = false;
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}