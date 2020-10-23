using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDesignDemo
{
    public partial class loginsignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PanelLogin.Visible = true;
            PanelRegister.Visible = false;
            LoginButton.BackColor = System.Drawing.Color.White;
            LoginButton.ForeColor = System.Drawing.Color.Black;
            RegisterButton.BackColor = Color.FromName("#c23838");
            RegisterButton.ForeColor = Color.FromName("#fff");
            TPassword.Visible = false;
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
    }
}