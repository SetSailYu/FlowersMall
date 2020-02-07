using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using System.Data;
using System.Data.SqlClient;

public partial class Front_U_levaeMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERName"] != null && Session["USERPWD"] != null)
        {
            DB db = new DB();
            int mm = 0;
            SqlDataReader sdr2 = db.DataReader("select s_c_id from Shipping_Table where s_u_id=" + Session["USERID"]);
            while (sdr2.Read())
            {
                mm++;
            }
            Label6.Text = Convert.ToString(mm);
            sdr2.Close();
            db.OffData();

        }
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
        string sql = "SELECT [u_name], [u_time], [u_information], [u_suler] FROM [lvmessage_Table]";
        db.LoadExecuteData(sql);
        //db.SetDataSetTableKey("ISBN");

        DataList1.DataSource = db.MyDataSet.Tables[0].DefaultView;//设置gridview控件的数据源为创建的数据集ds 
        DataList1.DataBind(); //绑定数据库表中数据
        db.OffData();
    }
}