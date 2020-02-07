using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;

public partial class Registanst : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.TextBox1.Text == "")
        {
            this.TextBox1.Focus();
        }
        RF1.Validate();
        RV1.Validate();
        RF2.Validate();
        CV1.Validate();
        RV2.Validate();
        HyperLink1.ForeColor = System.Drawing.Color.Black;
        this.TextBox1.Attributes.Add("onkeydown", "if(event.keyCode==13){document.getElementById('TextBox2').focus();  return   false}");
        this.TextBox2.Attributes.Add("onkeydown", "if(event.keyCode==13){document.getElementById('TextBox3').focus();  return   false}");
        this.TextBox3.Attributes.Add("onkeydown", "if(event.keyCode==13){document.getElementById('TextBox4').focus();  return   false}");
        this.TextBox3.Attributes.Add("onkeydown", "if(event.keyCode==13){document.getElementById('TextBox5').focus();  return   false}");
        this.TextBox4.Attributes.Add("onkeydown", "if(event.keyCode==13){document.getElementById('ImageButton1').focus();  return   false}");

    }

 
    //int radomNum()
    //{
    //    Random rd = new Random();
    //    Random rd1 = new Random();
    //    int s = rd.Next(0, 21);
    //    int s1 = rd1.Next(0, 10001);
    //    string z = s.ToString();
    //    string z1 = s1.ToString();
    //    string z2 = z + z1;
    //    return Convert.ToInt32(z2);

    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        DB db = new DB();
        if (!db.Fault)//判断是否成功连接数据库
        {
            db.LoadData("User_Table");//本地加载数据库
            if (!db.QueryValue(TextBox1.Text.Trim(), 1))//查询本地数据库，判断用户名是否存在
            {
                DataRow dr = db.MyDataSet.Tables[0].NewRow();//根据本地数据库中，表的结构，复制一条空行
                dr.BeginEdit();//开始编辑行

                //dr["u_id"] = radomNum();
                dr["u_name"] = TextBox1.Text.Trim();
                dr["u_iphone"] = TextBox2.Text.Trim();
                dr["u_password"] = TextBox4.Text.Trim();
                dr["u_mail"] = TextBox5.Text.Trim();
                db.MyDataSet.Tables[0].Rows.Add(dr); //将编辑的行添加到本地数据库中
                dr.EndEdit();//结束编辑行
                db.UploadData();//上传本地数据库

                db.OffData();
                db.Empty();

                Session["USERID"] = TextBox1.Text.Trim();
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('注册成功！');window.location='../Front/tiaoz.aspx';</script>");

            }
            else
            {
                db.OffData();
                db.Empty();
                Response.Write("<script> alert('用户名已存在！')</script>");
            }
        }
        else
        {
            db.OffData();
            Response.Write("<script> alert('连接数据库失败！')</script>");
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}
