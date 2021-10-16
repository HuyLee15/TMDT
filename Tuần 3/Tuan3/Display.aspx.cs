using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tuan3
{
    public partial class Display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie ck = Request.Cookies["color"];
            string cvalue = ck.Value;
            Color color = Color.Fromname(cvalue);
            msg.Forcolor = ConsoleColor;
        }
        
    }
}