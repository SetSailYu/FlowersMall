using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;

public partial class Back_ProductsManage_Gift : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetData();
        }
    }

    protected void GetData()
    {
        DB db = new DB();
        string sql = "SELECT DISTINCT * FROM [Commodity_Table] WHERE c_kind='礼品' ORDER BY [c_series]";
        db.LoadExecuteData(sql);
        //db.SetDataSetTableKey("ISBN");
        GridView1.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds 
        GridView1.DataKeyNames = new string[] { "c_id" };  //设置GridView每行的主键
        GridView1.DataBind(); //绑定数据库表中数据
        db.OffData();
    }

    /// <summary>
    /// 编辑
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;  //实现编辑功能

        GetData();
    }

    /// <summary>
    /// 取消
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;//实现取消编辑功能
        GetData();
    }

    /// <summary>
    /// 在对行进行了数据绑定后激发
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        // 如果行的类型是数据绑定行
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //行的状态是： 编辑状态 或者 （交替行且是编辑状态）
            //if (e.Row.RowState == DataControlRowState.Edit ||
            //e.Row.RowState == (DataControlRowState.Alternate | DataControlRowState.Edit))
            if ((e.Row.RowState & DataControlRowState.Edit) != 0)
            {
                TextBox curText;
                DropDownList sexddl = new DropDownList();
                sexddl.Items.Add("音乐盒");
                sexddl.Items.Add("金箔花");
                sexddl.Items.Add("3D水晶内雕");
                sexddl.Items.Add("首饰/美妆");
                sexddl.Items.Add("巧克力");
                sexddl.Items.Add("公仔/睡枕");
                sexddl.Items.Add("摆件/其他");
                curText = (TextBox)e.Row.Cells[1].Controls[0];
                sexddl.SelectedValue = curText.Text;
                e.Row.Cells[1].Controls.RemoveAt(0);
                e.Row.Cells[1].Controls.Add(sexddl);


                ((TextBox)e.Row.Cells[0].Controls[0]).TextMode = TextBoxMode.MultiLine; //展示图
                ((TextBox)e.Row.Cells[0].Controls[0]).Width = Unit.Pixel(120);
                ((TextBox)e.Row.Cells[2].Controls[0]).TextMode = TextBoxMode.MultiLine; //商品名
                ((TextBox)e.Row.Cells[2].Controls[0]).Width = Unit.Pixel(160);
                ((TextBox)e.Row.Cells[2].Controls[0]).Height = Unit.Pixel(100);
                ((TextBox)e.Row.Cells[3].Controls[0]).TextMode = TextBoxMode.MultiLine; //花语
                ((TextBox)e.Row.Cells[3].Controls[0]).Width = Unit.Pixel(160);
                ((TextBox)e.Row.Cells[3].Controls[0]).Height = Unit.Pixel(170);
                ((TextBox)e.Row.Cells[4].Controls[0]).TextMode = TextBoxMode.MultiLine; //花材
                ((TextBox)e.Row.Cells[4].Controls[0]).Width = Unit.Pixel(160);
                ((TextBox)e.Row.Cells[4].Controls[0]).Height = Unit.Pixel(170);
                ((TextBox)e.Row.Cells[5].Controls[0]).TextMode = TextBoxMode.MultiLine; //介绍
                ((TextBox)e.Row.Cells[5].Controls[0]).Width = Unit.Pixel(160);
                ((TextBox)e.Row.Cells[5].Controls[0]).Height = Unit.Pixel(170);
                ((TextBox)e.Row.Cells[6].Controls[0]).TextMode = TextBoxMode.MultiLine; //包装
                ((TextBox)e.Row.Cells[6].Controls[0]).Width = Unit.Pixel(160);
                ((TextBox)e.Row.Cells[6].Controls[0]).Height = Unit.Pixel(170);
                ((TextBox)e.Row.Cells[7].Controls[0]).TextMode = TextBoxMode.MultiLine; //详情图
                ((TextBox)e.Row.Cells[7].Controls[0]).Width = Unit.Pixel(120);
                ((TextBox)e.Row.Cells[8].Controls[0]).Width = Unit.Pixel(70); //单价

            }
        }
    }

    /// <summary>
    /// 在GirdView当前页索引正在更改时激发
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetData();
    }

    /// <summary>
    /// 更新功能 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string c_id = GridView1.DataKeys[e.RowIndex][0].ToString();//取出修改行的主键值
        //取出修改后各字段的值
        //展示图地址
        string c_pic = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text.ToString().Trim();
        //系列
        //string c_series = ((DropDownList)(GridView1.Rows[e.RowIndex].Controls[0])).SelectedValue.ToString().Trim();
        string c_series_key = null;
        foreach (string KeyName in Request.Form.AllKeys)
        {
            if (KeyName.Contains("ctl11"))
            {
                c_series_key = KeyName;
                break;
            }
        }
        string c_series = Request.Form[c_series_key];
        //商品名
        string c_name = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
        //花语
        string c_flower_language = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim();
        //花材
        string c_flower_material = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim();
        //介绍
        string c_introduce = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim();
        //包装
        string c_packing = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[6].Controls[0])).Text.ToString().Trim();
        //详情图
        string c_detailed_pic = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[7].Controls[0])).Text.ToString().Trim();
        //单价
        string c_price = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[8].Controls[0])).Text.ToString().Trim();
        //库存数量
        string c_stock = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[9].Controls[0])).Text.ToString().Trim();
        //销售数量
        string c_sale = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[10].Controls[0])).Text.ToString().Trim();

        //将用户更新的数据修改数据库
        //连接数据库
        string sql = "update Commodity_Table set " +
            " c_name='" + c_name +                              // 商品名
            "', c_series='" + c_series +                         // 系列                   
                                                                 //"' c_kind='" + c_series +                 // 种类
            "', c_flower_language='" + c_flower_language +       // 花语
            "', c_flower_material='" + c_flower_material +       // 花材
            "', c_introduce='" + c_introduce +                   // 介绍
            "', c_pic='" + c_pic +                               // 展示图
            "', c_detailed_pic='" + c_detailed_pic +             // 详细图
            "', c_stock=" + Convert.ToInt32(c_stock) +           // 库存数量
            ", c_sale=" + Convert.ToInt32(c_sale) +              // 销售数量
            ", c_price=" + Convert.ToDouble(c_price) +           // 单价
            ", c_packing='" + c_packing +                        // 包装

            "' where c_id=" + c_id;
        DB db = new DB();
        db.ExecuteNonQuery(sql);
        db.OffData();


        GridView1.EditIndex = -1;
        GetData();
    }

    /// <summary>
    /// 删除
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string c_id = GridView1.DataKeys[e.RowIndex][0].ToString();//取出修改行的主键值
        //Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>if(confirm('是否删除？')){t();}else{f()}</script>");
        DB db = new DB();
        db.ExecuteNonQuery("delete from Commodity_Table where c_id=" + c_id);
        db.OffData();
        GetData();
    }
}