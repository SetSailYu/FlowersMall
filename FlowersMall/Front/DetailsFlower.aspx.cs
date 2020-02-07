using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using System.Data.SqlClient;


public partial class Front_DetailsFlower : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // 第一次加载页面 
        {
            string c_id = Request.QueryString["c_id"].ToString().Trim();
            DB dB = new DB();
            if (!dB.Fault)//判断是否成功连接数据库
            {
                dB.LoadData(" Commodity_Table", "c_id", Convert.ToInt32(c_id));
                LinkButton41.Text = dB.GetValue("c_kind");
                Label5.Text = dB.GetValue("c_kind");
                Label1.Text = dB.GetValue("c_name");
                Label4.Text = dB.GetValue("c_name");
                Image1.ImageUrl = "../Images/img/" + dB.GetValue("c_pic");
                Label2.Text = dB.GetValue("c_sale");
                Label6.Text = dB.GetValue("c_flower_material");
                Label7.Text = dB.GetValue("c_packing");
                Label8.Text = dB.GetValue("c_flower_language");
                Label9.Text = dB.GetPriceValue("c_price");
                Label3.Text = dB.GetValue("c_introduce");
                Image2.ImageUrl = "../Images/img/" + dB.GetValue("c_detailed_pic");
            }
            else
            {
                dB.OffData();
                Response.Write("<script> alert('连接数据库失败！')</script>");
            }

        }
        if (Session["USERName"] != null && Session["USERPWD"] != null)
        {
            DB db = new DB();
            int mm = 0;
            SqlDataReader sdr2 = db.DataReader("select s_c_id from Shipping_Table where s_u_id=" + Session["USERID"]);
            while (sdr2.Read())
            {
                mm++;
            }
            Label1.Text = Convert.ToString(mm);
            sdr2.Close();
            db.OffData();

        }
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

    /// <summary>
    /// 加入购物车
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void LinkButton42_Click(object sender, EventArgs e)
    {
        
        if (Session["USERName"] != null && Session["USERPWD"] != null)
        {
            string c_id = Request.QueryString["c_id"].ToString().Trim();
            AddData(c_id);

            Response.Redirect("ShoppingCart.aspx?");
        }
        else
        {
            //Response.Write("<script> alert('您还没登录，请先登录！')</script>");
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('您还没登录，请先登录！');</script>");
        }

    }

    /// <summary>
    /// 立即购买
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void LinkButton43_Click(object sender, EventArgs e)
    {
        if (Session["USERName"] != null && Session["USERPWD"] != null)
        {
            string c_id = Request.QueryString["c_id"].ToString().Trim();
            UpData(c_id);
            AddData2(c_id);

            Response.Redirect("Oder.aspx?");
        }
        else
        {
            //Response.Write("<script> alert('您还没登录，请先登录！')</script>");
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('您还没登录，请先登录！');</script>");
        }
    }

    protected void AddData(string c_id)
    {
        DB db = new DB();
        if (db.Query("select * from Shipping_Table where s_c_id=" + c_id + " and s_u_id=" + Session["USERID"]))//判断该书是否存在
        {
            db.ExecuteNonQuery("update Shipping_Table set s_num=s_num+1,s_buy=1 where s_c_id=" + c_id + " and s_u_id=" + Session["USERID"]);//数量+1
        }
        else
        {
            SqlDataReader sdr = db.DataReader("select c_name,c_price,c_pic from Commodity_Table where c_id=" + c_id);
            string c_name = null;
            double c_price = 0.0;
            string c_pic = null;

            while (sdr.Read())
            {
                c_name = sdr["c_name"].ToString().Trim();
                c_price = Convert.ToDouble(sdr["c_price"].ToString().Trim());
                c_pic = sdr["c_pic"].ToString().Trim();
            }
            sdr.Close();
            //添加图书到购物车
            db.ExecuteNonQuery("insert into Shipping_Table values(" + Session["USERID"] + "," + c_id + ",'" + c_name + "'," + c_price + ",'" + c_pic + "',1,1)");
        }

        db.OffData();
    }

    protected void UpData(string c_id)
    {
        DB db = new DB();
        db.ExecuteNonQuery("update Shipping_Table set s_buy=0 where s_u_id=" + Session["USERID"]);//数量+1
        db.OffData();
    }

    protected void AddData2(string c_id)
    {
        DB db = new DB();
        if (db.Query("select * from Shipping_Table where s_c_id=" + c_id + " and s_u_id=" + Session["USERID"]))//判断该商品是否存在
        {
            db.ExecuteNonQuery("update Shipping_Table set s_num=1,s_buy=1 where s_c_id=" + c_id + " and s_u_id=" + Session["USERID"]);//数量=1
        }
        else
        {
            SqlDataReader sdr = db.DataReader("select c_name,c_price,c_pic from Commodity_Table where c_id=" + c_id);
            string c_name = null;
            double c_price = 0.0;
            string c_pic = null;

            while (sdr.Read())
            {
                c_name = sdr["c_name"].ToString().Trim();
                c_price = Convert.ToDouble(sdr["c_price"].ToString().Trim());
                c_pic = sdr["c_pic"].ToString().Trim();
            }
            sdr.Close();
            //添加商品到购物车
            db.ExecuteNonQuery("insert into Shipping_Table values(" + Session["USERID"] + "," + c_id + ",'" + c_name + "'," + c_price + ",'" + c_pic + "',1,1)");
        }

        db.OffData();
    }

}