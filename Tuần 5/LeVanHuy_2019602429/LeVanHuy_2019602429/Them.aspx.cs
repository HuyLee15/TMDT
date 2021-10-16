using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeVanHuy_2019602429
{
    public partial class Them : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void InsertedCmd(object sender, FormViewInsertedEventArgs e)
        {
            if(e.Exception != null)
            {
                e.KeepInInsertMode = true;
                e.ExceptionHandled = true;
                errmsg.Text = "Co loi xay ra: " + e.Exception.Message;
            }
            else
            {
                errmsg.Text = "Them thanh cong";
            }
        }
    }
}