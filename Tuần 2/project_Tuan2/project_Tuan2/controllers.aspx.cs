using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_Tuan2
{
    public partial class controllers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Request.Form["user"];
            string pass = Request.Form["pass"];
            if (user == pass)
                Server.Transfer("tainguyen.aspx");
            else
                Response.Redirect("error.aspx");
        }
    }
}