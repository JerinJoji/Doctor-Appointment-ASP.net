using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignDemo
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginsignup.aspx");
        }

        protected void LSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginsignup.aspx");
        }

        protected void BBookNow_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginsignup.aspx");
        }

        protected void LLindexHeading_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}