using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Back_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void XH_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["XH_Flower"] = 0;
        Response.Redirect("FlowersPackage.aspx? ");
    }
    protected void AQ_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["XH_Flower"] = 1;
        Response.Redirect("FlowersPackage.aspx? ");
    }
    protected void SR_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["XH_Flower"] = 2;
        Response.Redirect("FlowersPackage.aspx? ");
    }
    protected void HQ_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["XH_Flower"] = 3;
        Response.Redirect("FlowersPackage.aspx? ");
    }
    protected void SH_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["XH_Flower"] = 4;
        Response.Redirect("FlowersPackage.aspx? ");
    }
    protected void SW_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["XH_Flower"] = 5;
        Response.Redirect("FlowersPackage.aspx? ");
    }
    protected void BY_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["XH_Flower"] = 6;
        Response.Redirect("FlowersPackage.aspx? ");
    }
    protected void QT_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["XH_Flower"] = 7;
        Response.Redirect("FlowersPackage.aspx? ");
    }
    // 永生花
    protected void YS_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["YS_Flower"] = 0;
        Response.Redirect("PreservedFlower.aspx? ");
    }
    protected void JD_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["YS_Flower"] = 1;
        Response.Redirect("PreservedFlower.aspx? ");
    }
    protected void JX_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["YS_Flower"] = 2;
        Response.Redirect("PreservedFlower.aspx? ");
    }
    protected void XY_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["YS_Flower"] = 3;
        Response.Redirect("PreservedFlower.aspx? ");
    }
    protected void PH_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["YS_Flower"] = 4;
        Response.Redirect("PreservedFlower.aspx? ");
    }
    protected void TS_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["YS_Flower"] = 5;
        Response.Redirect("PreservedFlower.aspx? ");
    }
    // 礼品
    protected void LP_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["LP_Flower"] = 0;
        Response.Redirect("Gift.aspx? ");
    }
    protected void YY_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["LP_Flower"] = 1;
        Response.Redirect("Gift.aspx? ");
    }
    protected void JB_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["LP_Flower"] = 2;
        Response.Redirect("Gift.aspx? ");
    }
    protected void SJ_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["LP_Flower"] = 3;
        Response.Redirect("Gift.aspx? ");
    }
    protected void SM_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["LP_Flower"] = 4;
        Response.Redirect("Gift.aspx? ");
    }
    protected void QK_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["LP_Flower"] = 5;
        Response.Redirect("Gift.aspx? ");
    }
    protected void GS_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["LP_Flower"] = 6;
        Response.Redirect("Gift.aspx? ");
    }
    protected void BQ_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["LP_Flower"] = 7;
        Response.Redirect("Gift.aspx? ");
    }

}