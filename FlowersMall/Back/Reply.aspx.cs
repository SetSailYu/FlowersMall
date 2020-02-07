using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;


public partial class Back_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName=="huifu")
        {
            TextBox ttb = (TextBox)e.Item.FindControl("text");
            DB dB = new DB();
       
            string sqlstr = "UPDATE  lvmessage" + " SET u_suler='" +ttb.Text + "' WHERE u_name='" +e.CommandArgument.ToString().Trim()+"'";
            dB.UPATE(sqlstr);
            dB.OffData();
        }
    }
}