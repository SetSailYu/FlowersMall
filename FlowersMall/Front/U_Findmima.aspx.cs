using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;

public partial class Front_U_Findmima : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {

        }
        URF2.Validate();
        URFV3.Validate();
        UCV1.Validate();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DB db = new DB();
        string zu = TextBox1.Text.Trim();
        string tel = TextBox2.Text.Trim();

        if (!db.Fault)
        {
            if (db.Query("SELECT * FROM  User_Table  WHERE u_name='" + zu + "'"))
            {
                ArrayList arr = db.DataReader("SELECT * FROM User_Table WHERE u_name='" + zu + "'", "u_iphone");

                if (tel == arr[0].ToString())
                {
                    db.OffData();
                    //在后台代码执行前端脚本
                    ScriptManager.RegisterStartupScript(this.Button1, this.GetType(), "", " CloseDialog();", true);


                }
                else
                {
                    db.OffData();
                    Response.Write("<script> alert('电话错误') </script>");
                }
            }
            else
            {
                db.OffData();
                Response.Write("<script> alert('无此人账号') </script>");

            }

        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DB db = new DB();
        string zu = TextBox1.Text.Trim();
        string pw = TextBox4.Text.Trim();
        if (!db.Fault)
        {
            ArrayList arr = db.DataReader("SELECT * FROM User_Table WHERE u_name='" + zu + "'", "u_id");
            string u_id = arr[0].ToString();
            db.LoadData("User_Table", "u_id", u_id);//本地加载数据库
            DataRow[] dr = db.MyDataSet.Tables[0].Select("u_id= '" + u_id + "'");//查询数据
            for (int i = 0; i < dr.Length; i++)
            {

                dr[i]["u_password"] = pw ;
             
            }
            db.UploadData();//上传本地数据库

            db.OffData();
            db.Empty();
            Response.Write("<script> alert('修改成功') </script>");
            ScriptManager.RegisterStartupScript(this.Button1, this.GetType(), "", " CloseDialog1();", true);

        }
    }





}