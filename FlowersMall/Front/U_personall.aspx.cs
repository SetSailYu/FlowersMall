using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class Front_U_personall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["USERName"] != null && Session["USERPWD"] != null)
        {
            if (!Page.IsPostBack)
            {
                DB db = new DB();
                //Session["USERID"].ToString();
                string username = Session["USERName"].ToString().Trim();
                //string username = Request.QueryString["id"];
                string GetCon = "data source=localhost;database=Flower_Shop;Integrated Security=True;Pooling=False";
                SqlConnection con = new SqlConnection(GetCon);
                con.Open();
                string str_con = "select *from User_Table where u_name='" + username + "'";
                SqlDataAdapter da = new SqlDataAdapter(str_con, con);
                DataSet dt = new DataSet();
                da.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();


                SqlConnection con1 = new SqlConnection(GetCon);
                con1.Open();
                ArrayList arr = db.DataReader("SELECT * FROM User_Table WHERE u_name='" + username + "'", "u_id");
                string au_id = arr[0].ToString();
                string str_con1 = "select * from Address_Table where a_id=" + au_id + "";
                SqlDataAdapter da1 = new SqlDataAdapter(str_con1, con1);
                DataSet dt1 = new DataSet();
                da1.Fill(dt1);
                DataList2.DataSource = dt1;
                DataList2.DataBind();
                con1.Close();

                for (int i = 0; i < DataList1.Items.Count; i++)
                {
                    TextBox id = DataList1.Items[i].FindControl("personal_txt1") as TextBox;
                    TextBox nm = DataList1.Items[i].FindControl("personal_txt2") as TextBox;
                    TextBox mim = DataList1.Items[i].FindControl("personal_txt3") as TextBox;
                    TextBox mail = DataList1.Items[i].FindControl("personal_txt4") as TextBox;
                    TextBox tel = DataList1.Items[i].FindControl("personal_txt5") as TextBox;
                    TextBox pc = DataList1.Items[i].FindControl("personal_txt6") as TextBox;
                    Updata_txt1.Text = id.Text;
                    Updata_txt2.Text = nm.Text;
                    Updata_txt3.Text = mim.Text;
                    Updata_txt4.Text = mail.Text;
                    Updata_txt5.Text = tel.Text;
                    Updata_txt6.Text = pc.Text;
                    shou_txt1.Text = id.Text;
                    Change_textc();
                }


            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('请先登入！');window.location='../Front/Login.aspx';</script>");

        }

    }


    void Change_textc()
    {
        Updata_txt1.ForeColor = System.Drawing.Color.Gray;
        Updata_txt2.ForeColor = System.Drawing.Color.Gray;
        Updata_txt3.ForeColor = System.Drawing.Color.Gray;
        Updata_txt4.ForeColor = System.Drawing.Color.Gray;
        Updata_txt5.ForeColor = System.Drawing.Color.Gray;
        Updata_txt6.ForeColor = System.Drawing.Color.Gray;


    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {    //    //获取文本的数值
        if (e.CommandName == "s1")
        {

        }
    }


    protected void Updata_txt2_TextChanged(object sender, EventArgs e)
    {
        Updata_txt2.ForeColor = System.Drawing.Color.Black;
    }

    protected void Updata_txt3_TextChanged(object sender, EventArgs e)
    {
        Updata_txt3.ForeColor = System.Drawing.Color.Black;
    }

    protected void Updata_txt4_TextChanged(object sender, EventArgs e)
    {
        Updata_txt4.ForeColor = System.Drawing.Color.Black;
    }

    protected void Updata_txt5_TextChanged(object sender, EventArgs e)
    {
        Updata_txt5.ForeColor = System.Drawing.Color.Black;
    }

    protected void Updata_txt6_TextChanged(object sender, EventArgs e)
    {
        Updata_txt6.ForeColor = System.Drawing.Color.Black;
    }

    protected void Lib_Click(object sender, EventArgs e)
    {
        DB db = new DB();
        string updata_id = Updata_txt1.Text;
        string updata_nm = Updata_txt2.Text;
        string updata_mim = Updata_txt3.Text;
        string updata_mail = Updata_txt4.Text;
        string updata_tel = Updata_txt5.Text;
        string updata_sfz = Updata_txt6.Text;

        db.LoadData("User_Table", "u_id", updata_id);//本地加载数据库
        DataRow[] dr = db.MyDataSet.Tables[0].Select("u_id= '" + updata_id + "'");//查询数据
        for (int i = 0; i < dr.Length; i++)
        {
            dr[i]["u_name"] = updata_nm;
            dr[i]["u_password"] = updata_mim;
            dr[i]["u_iphone"] = updata_tel;
            dr[i]["u_mail"] = updata_mail;
            dr[i]["u_card"] = updata_sfz;
        }
        db.UploadData();//上传本地数据库

        db.OffData();
        db.Empty();
        Session["USERName"] = updata_nm;
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('修改成功！');window.location='../Front/U_Personal.aspx';</script>");
        //Response.Redirect(string.Format("../Front/U_Personal.aspx?id={0}", updata_nm));


    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DB db = new DB();
        string id = shou_txt1.Text;
        string shr = shou_txt2.Text;
        string tel = shou_txt3.Text;
        string address = shou_txt4.Text;
        string code = shou_txt5.Text;
        if (!db.Fault)//判断是否成功连接数据库
        {
            db.LoadData("Address_Table");//本地加载数据库

            DataRow dr = db.MyDataSet.Tables[0].NewRow();//根据本地数据库中，表的结构，复制一条空行
            dr.BeginEdit();//开始编辑行            
            dr["a_id"] = id; ;
            dr["a_name"] = shr;
            dr["a_iphone"] = tel;
            dr["a_address"] = address;
            dr["a_postcode"] = code;
            db.MyDataSet.Tables[0].Rows.Add(dr); //将编辑的行添加到本地数据库中
            dr.EndEdit();//结束编辑行
            db.UploadData();//上传本地数据库

            db.OffData();
            db.Empty();

            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('添加成功！');window.location='../Front/U_Personal.aspx';</script>");

        }

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["USERName"] = null;
        Session["USERPWD"] = null;
        Session["USERID"] = null;
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>alert('退出成功！');{location.href='../Front/Login.aspx'}</script>");

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