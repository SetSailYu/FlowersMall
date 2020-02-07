using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using System.Data.SqlClient;

public partial class Front_huifu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
           
        DB db = new DB();
        //string username = Request.QueryString["id"];
        //string GetCon = "Data Source=127.0.0.1;Initial Catalog=Flower_Shop;Integrated Security=True";
        //SqlConnection con = new SqlConnection(GetCon);
        //con.Open();
        //string str_con = "select *from User_Table where u_name='" + username + "'";
        //SqlDataAdapter da = new SqlDataAdapter(str_con, con);
        //DataSet dt = new DataSet();
        //da.Fill(dt);con.Close();
        if (Session["USERName"] == null)
        {
            string str = radom();
            Label3.Text = "游客" + str;

        }
        if (Session["USERName"] != null)
        {
            if (!db.Fault)
            {
                string username = Session["USERName"].ToString().Trim();
                //ArrayList arr = db.DataReader("SELECT * FROM User_Table WHERE u_name='" + username + "'", "u_name");
                //string user = arr[0].ToString();
                Label3.Text = username;
            }
        }
        if (Session["USERName"] != null && Session["USERPWD"] != null)
        {
            DB db1 = new DB();
            int mm = 0;
            SqlDataReader sdr2 = db1.DataReader("select s_c_id from Shipping_Table where s_u_id=" + Session["USERID"]);
            while (sdr2.Read())
            {
                mm++;
            }
            Label5.Text = Convert.ToString(mm);
            sdr2.Close();
            db1.OffData();

        }
        db.OffData();

    }
    string radom() {
        Random rd = new Random();
       string s=  Convert.ToString(rd.Next(0, 9999));
        return s;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DB db = new DB();
        string name = Label3.Text;
        string txt = TextBox1.Text;
        string time = DateTime.Now.ToString();
        db.LoadData("lvmessage_Table");
        DataRow dr = db.MyDataSet.Tables[0].NewRow();//根据本地数据库中，表的结构，复制一条空行
        dr.BeginEdit();//开始编辑行
        dr["u_name"] = name;
        dr["u_information"] = txt;
        dr["u_time"] = time;
        db.MyDataSet.Tables[0].Rows.Add(dr); //将编辑的行添加到本地数据库中
        dr.EndEdit();//结束编辑行
        db.UploadData();//上传本地数据库

        db.OffData();
        db.Empty();

        Response.Write("<script> alert('评论成功！');window.location='../Front/U_levaeMessage.aspx';</script>");
        TextBox1.Text = null;

    }
}