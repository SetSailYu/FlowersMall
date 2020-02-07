using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using System.Data;
using System.Collections;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class Front_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetData1();
            GetData2();
            GetData3();
            GetData4();
            GetData5();
            GetData6();
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

    /// <summary>
    /// 内容页中找母版页中的控件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    //void Page_LoadComplete(Object sender, EventArgs e)
    //{
    //    if (Session["USERName"] != null && Session["USERPWD"] != null)
    //    {
    //        DB db = new DB();
    //        int mm = 0;
    //        SqlDataReader sdr2 = db.DataReader("select s_c_id from Shipping_Table where s_u_id=" + Session["USERID"]);
    //        while (sdr2.Read())
    //        {
    //            mm++;
    //        }
    //        (Master.FindControl("HyperLink19") as HyperLink).Text = Convert.ToString(mm);
    //        sdr2.Close();
    //        db.OffData();

    //    }
    //}
    //void Page_LoadComplete(Object sender, EventArgs e)
    //{
    //    if (Session["USERName"] != null && Session["USERPWD"] != null)
    //    {
    //        
    //    }

    //}

    /// <summary>
    /// 爱情专区
    /// </summary>
    protected void GetData1()
    {
        DB db = new DB();
        string sql = "SELECT DISTINCT TOP 8 * FROM [Commodity_Table] WHERE c_kind='鲜花' and c_series='爱情系列' ORDER BY [c_id]";
        db.LoadExecuteData(sql);
        //db.SetDataSetTableKey("ISBN");
        DataList1.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds 
        DataList1.DataBind(); //绑定数据库表中数据
        db.OffData();
    }
    /// <summary>
    /// 送长辈专区
    /// </summary>
    protected void GetData2()
    {
        DB db = new DB();
        string sql = "SELECT DISTINCT TOP 8 * FROM [Commodity_Table] WHERE c_kind='鲜花' and c_series='其它系列' ORDER BY [c_id] DESC";
        db.LoadExecuteData(sql);
        //db.SetDataSetTableKey("ISBN");
        DataList2.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds 
        DataList2.DataBind(); //绑定数据库表中数据
        db.OffData();
    }
    /// <summary>
    /// 永生花专区
    /// </summary>
    protected void GetData3()
    {
        DB db = new DB();
        string sql = "SELECT DISTINCT TOP 8 * FROM [Commodity_Table] WHERE c_kind='永生花'  ORDER BY [c_id]";
        db.LoadExecuteData(sql);
        //db.SetDataSetTableKey("ISBN");
        DataList3.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds 
        DataList3.DataBind(); //绑定数据库表中数据
        db.OffData();
    }

    /// <summary>
    /// 礼品专区
    /// </summary>
    protected void GetData4()
    {
        DB db = new DB();
        string sql = "SELECT DISTINCT TOP 8 * FROM [Commodity_Table] WHERE c_kind='礼品'  ORDER BY [c_id]";
        db.LoadExecuteData(sql);
        //db.SetDataSetTableKey("ISBN");
        DataList4.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds 
        DataList4.DataBind(); //绑定数据库表中数据
        db.OffData();
    }

    /// <summary>
    /// 限时推荐
    /// </summary>
    protected void GetData5()
    {
        DB db = new DB();
        string sql = "SELECT DISTINCT TOP 3 * FROM Recommend_Table";
        db.LoadExecuteData(sql);
        //db.SetDataSetTableKey("ISBN");
        DataList5.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds 
        DataList5.DataBind(); //绑定数据库表中数据
        db.OffData();
    }

    /// <summary>
    /// 右侧推荐
    /// </summary>
    protected void GetData6()
    {
        DB db = new DB();
        string sql = "select * from Commodity_Table where c_id=196 or c_id=195 or c_id=27";
        db.LoadExecuteData(sql);
        //db.SetDataSetTableKey("ISBN");
        EditAddress(db, 27, "11.jpg");
        EditAddress(db, 195, "12.png");
        EditAddress(db, 196, "13.jpg");
        DataList6.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds 
        DataList6.DataBind(); //绑定数据库表中数据
        db.OffData();
    }

    protected void EditAddress(DB db, int c_id, string address)
    {
        DataRow[] dr = db.MyDataSet.Tables[0].Select("c_id=" + c_id);//查询数据
        for (int i = 0; i < dr.Length; i++)
        {
            dr[i]["c_pic"] = address;
        }
    }

    protected void AQ_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["XH_Flower"] = 1;
        Response.Redirect("FlowersPackage.aspx? ");
    }

    protected void QT_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["XH_Flower"] = 7;
        Response.Redirect("FlowersPackage.aspx? ");
    }

    protected void YS_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["YS_Flower"] = 0;
        Response.Redirect("PreservedFlower.aspx? ");
    }

    protected void LP_LinkButton1_Click(object sender, EventArgs e)
    {
        Session["LP_Flower"] = 0;
        Response.Redirect("Gift.aspx? ");
    }


    protected void DataList5_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "discribe")
        {
            string c_id = e.CommandArgument.ToString();
            Response.Redirect("DetailsFlower.aspx?c_id=" + c_id);
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "discribe")
        {
            string c_id = e.CommandArgument.ToString();
            Response.Redirect("DetailsFlower.aspx?c_id=" + c_id );
        }
        
    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "discribe")
        {
            string c_id = e.CommandArgument.ToString();
            Response.Redirect("DetailsFlower.aspx?c_id=" + c_id);
        }
    }

    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "discribe")
        {
            string c_id = e.CommandArgument.ToString();
            Response.Redirect("DetailsFlower.aspx?c_id=" + c_id);
        }
    }

    protected void DataList4_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "discribe")
        {
            string c_id = e.CommandArgument.ToString();
            Response.Redirect("DetailsFlower.aspx?c_id=" + c_id);
        }
    }

    protected void DataList6_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "discribe")
        {
            string c_id = e.CommandArgument.ToString();
            Response.Redirect("DetailsFlower.aspx?c_id=" + c_id);
        }
    }
}