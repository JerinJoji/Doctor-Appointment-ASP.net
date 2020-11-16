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
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                Panelbookappoint.Visible = true;
                Panelrecord.Visible = false;
                CalendarDoa.Visible = false;
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