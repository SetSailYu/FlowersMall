using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using System.Data;
using System.Data.SqlClient;

public partial class Back_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetData();
        }
    }
    /// <summary>
    /// 全部
    /// </summary>
    protected void GetData()
    {
        DB db = new DB();
        string sql = "SELECT * FROM [Admin_Table]";
        db.LoadExecuteData(sql);
        //db.SetDataSetTableKey("ISBN");

        GridView1.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds 
        GridView1.DataBind(); //绑定数据库表中数据
        db.OffData();
    }
}