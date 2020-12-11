using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignDemo
{
    public partial class Receipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblRecord.Text = Session["recordid"].ToString();
            lblRecord0.Text = Session["opdno"].ToString();
            lblRecord1.Text = Session["Pname"].ToString();
            lblRecord2.Text = Session["Adoc"].ToString();
            lblRecord3.Text = Session["Adep"].ToString();
            lblRecord4.Text = Session["Adate"].ToString();
            lblRecord5.Text = Session["AStatus"].ToString();
        }
    }
}