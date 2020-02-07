using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;


public partial class Front_MyOder : System.Web.UI.Page
{
    protected static string userId = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERName"] != null && Session["USERPWD"] != null)
        {
            userId = Session["USERID"].ToString();
            if (!IsPostBack)
            {
                GetData();
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('您还没登录，请先登录！');window.location='../Front/Login.aspx';</script>");

        }
    }

    /// <summary>
    /// 绑定数据源(全部)
    /// </summary>
    protected void GetData()
    {
        DB db = new DB();
        string sql = "SELECT DISTINCT  o_id,o_a_name,o_a_iphone,o_a_address,o_a_postcode,o_date,o_delivery,o_flag,o_message  FROM Order_Table WHERE o_u_id=" + Session["USERID"] + " ORDER BY  o_date desc";
        db.LoadExecuteData(sql);
        this.DataList2.DataKeyField = "o_id";
        DataList2.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds
        DataList2.DataBind();                           //绑定数据库表中数据

        db.OffData();
    }

    /// <summary>
    /// 绑定数据源(已付款/未支付)
    /// </summary>
    /// <param name="o_flag"></param>
    protected void GetData(int o_flag)
    {
        DB db = new DB();
        string sql = "SELECT DISTINCT  o_id,o_a_name,o_a_iphone,o_a_address,o_a_postcode,o_date,o_delivery,o_flag,o_message  FROM Order_Table WHERE o_u_id=" + Session["USERID"] + " and o_flag="+ o_flag + " ORDER BY  o_date desc";
        db.LoadExecuteData(sql);
        this.DataList2.DataKeyField = "o_id";
        DataList2.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds
        DataList2.DataBind();                           //绑定数据库表中数据

        db.OffData();
    }

    /// <summary>
    /// 绑定数据源(订单编号查询)
    /// </summary>
    /// <param name="o_flag"></param>
    protected void GetData(string o_id)
    {
        DB db = new DB();
        string sql = "SELECT DISTINCT  o_id,o_a_name,o_a_iphone,o_a_address,o_a_postcode,o_date,o_delivery,o_flag,o_message  FROM Order_Table WHERE o_u_id=" + Session["USERID"] + " and o_id='" + o_id + "' ORDER BY  o_date desc";
        db.LoadExecuteData(sql);
        this.DataList2.DataKeyField = "o_id";
        DataList2.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds
        DataList2.DataBind();                           //绑定数据库表中数据

        db.OffData();
    }

    /// <summary>
    /// 绑定商品信息
    /// </summary>
    /// <param name="orderID"></param>
    /// <returns></returns>
    protected DataTable GetDetails(string orderID)
    {
        string sql = "SELECT DISTINCT  Commodity_Table.c_pic, Commodity_Table.c_name, Commodity_Table.c_price, Order_Table.*  FROM Order_Table INNER JOIN Commodity_Table ON Order_Table.o_c_id = Commodity_Table.c_id WHERE o_u_id=" + Session["USERID"] + " and o_id='"+ orderID + "'  ORDER BY  o_c_id";
        DB db = new DB();
        db.LoadExecuteData(sql);
        db.OffData();

        return db.MyDataSet.Tables[0];
    }

    /// <summary>
    /// 计算总金额
    /// </summary>
    /// <param name="o_id"></param>
    /// <returns></returns>
    protected string BuyPrice (string o_id)
    {
        DB db = new DB();
        int mm = 0;
        SqlDataReader sdr2 = db.DataReader("select Order_Table.o_s_num,Commodity_Table.c_price from Order_Table INNER JOIN Commodity_Table ON Order_Table.o_c_id = Commodity_Table.c_id where Order_Table.o_u_id=" + Session["USERID"] + " and o_id='"+ o_id + "'");
        while (sdr2.Read())
        {
            mm += Convert.ToInt32(Convert.ToInt32(sdr2["o_s_num"].ToString().Trim()) * Convert.ToDouble(sdr2["c_price"].ToString().Trim()));
        }
        sdr2.Close();
        db.OffData();

        return Convert.ToString(mm);
    }

    /// <summary>
    /// 显示订单状态
    /// </summary>
    /// <param name="o_flag"></param>
    /// <returns></returns>
    protected string OrderState(bool o_flag)
    {
        return o_flag ? "已付款" : "未支付";
    }

    /// <summary>
    /// 控制是否显示滑动支付模块
    /// </summary>
    /// <param name="o_flag"></param>
    /// <returns></returns>
    protected bool ShowDiv(bool o_flag)
    {
        return o_flag ? false : true;
    }

    /// <summary>
    /// 订单状态筛选
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (DropDownList2.SelectedIndex)
        {
            case 0:
                GetData();
                break;
            case 1:
                GetData(1);
                break;
            case 2:
                GetData(0);
                break;
        }
    }

    /// <summary>
    /// 订单编号查询
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GetData(TextBox1.Text.Trim());
    }


    [WebMethod]
    public static string OderPay(string value)
    {
        DB db = new DB();
        string sql = "update Order_Table set o_flag=1  WHERE o_u_id=" + userId + " and o_id="+ value ;
        db.LoadExecuteData(sql);

        db.OffData();

        return "支付成功 ";
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