using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Jump : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERName"] != null && Session["USERPWD"] != null)
        {
            Session["USERName"] = null;
            Session["USERPWD"] = null;
            Session["USERID"] = null;
        }else if (Session["Adminame"] != null && Session["AdminPWD"] != null)
        {
            Session["Adminame"] = null;
            Session["AdminPWD"] = null;
        }
    }
}