using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using System.Data;

public partial class Back_NewProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //判断是否上传了 展示图片
        if (FileUpload1.HasFile)
        {
            //指定上传文件在服务器上的保存路径
            string savePath = Server.MapPath("~/Images/img/");
            //检查服务器上是否存在这个物理路径，如果不存在则创建
            if (!System.IO.Directory.Exists(savePath))
            {
                //需要注意的是，需要对这个物理路径有足够的权限，否则会报错
                //另外，这个路径应该是在网站之下，而不是将网站部署在C盘却把文件保存在D盘
                System.IO.Directory.CreateDirectory(savePath);
            }
            //获取上传名字
            string filename1 = FileUpload1.FileName;
            //返回指定图片的后缀
            string fileext1 = System.IO.Path.GetExtension(filename1);
            //获取当前时间
            string filenamaes1 = DateTime.Now.ToString("yyyyMMddHHffss") + fileext1;
            //上传到此项目根目录的Images/img/文件夹
            string savePath1 = savePath + "\\" + filenamaes1;
            string savePath2 = null;
            //FileUpload1.SaveAs(savePath);//保存文件 

            DB dB = new DB();
            if (!dB.Fault)//判断是否成功连接数据库
            {
                dB.LoadData("Commodity_Table");//本地加载数据库
                if (!dB.QueryValue(TextBox1.Text.Trim(), 1))//查询本地数据库，判断c_name内商品名是否存在
                {
                    DataRow dr = dB.MyDataSet.Tables[0].NewRow();//根据本地数据库中，表的结构，复制一条空行
                    dr.BeginEdit();//开始编辑行

                    dr["c_name"] = TextBox1.Text.Trim(); //商品名
                    dr["c_flower_language"] = TextBox2.Text.Trim(); //花语
                    dr["c_packing"] = TextBox5.Text.Trim(); // 包装
                    dr["c_introduce"] = TextBox4.Text.Trim(); // 介绍
                    dr["c_price"] = Convert.ToDouble(TextBox6.Text.Trim()); // 单价
                    dr["c_stock"] = Convert.ToInt32(TextBox7.Text.Trim()); // 进货数量
                    dr["c_sale"] = 0; // 销售数量
                    dr["c_pic"] = filenamaes1; // 展示图片地址

                    //判断是否上传了 详细图片
                    if (FileUpload2.HasFile)
                    {
                        //获取上传名字
                        string filename2 = FileUpload2.FileName;
                        //返回指定图片的后缀
                        string fileext2 = System.IO.Path.GetExtension(filename2);
                        //获取当前时间
                        string filenamaes2 = DateTime.Now.ToString("yyyyMMddHHffss") + fileext2;
                        //上传到此项目根目录的Images/img/文件夹
                        savePath2 = savePath + "\\" + filenamaes2;
                        ///////////////////////////
                        
                        dr["c_detailed_pic"] = filenamaes2; // 详细图片地址
                    }

                    //分类
                    switch (DropDownList1.SelectedIndex)
                    {
                        case 0:
                            dr["c_kind"] = DropDownList1.SelectedValue.Trim(); //种类（鲜花）
                            dr["c_series"] = DropDownList2.SelectedValue.Trim(); //系列,细分的用途
                            dr["c_flower_material"] = TextBox3.Text.Trim(); // 花材
                            break;
                        case 1:
                            dr["c_kind"] = DropDownList1.SelectedValue.Trim(); //种类（永生花）
                            dr["c_series"] = DropDownList3.SelectedValue.Trim(); //系列,细分的用途
                            dr["c_flower_material"] = TextBox3.Text.Trim(); // 花材
                            break;
                        case 2:
                            dr["c_kind"] = DropDownList1.SelectedValue.Trim(); //种类（礼品）
                            dr["c_series"] = DropDownList4.SelectedValue.Trim(); //系列,细分的用途
                            dr["c_flower_material"] = TextBox3.Text.Trim(); // 花材
                            break;
                        case 3:
                            dr["c_kind"] = DropDownList1.SelectedValue.Trim(); //种类（鲜花花材）
                            /////c_series系列,细分的用途 为空
                            //// 花材
                            dr["c_flower_material"] = DropDownList5.SelectedIndex == 7 ? TextBox3.Text.Trim() : DropDownList5.SelectedValue.Trim(); 
                            break;
                    }
                    
                    dB.MyDataSet.Tables[0].Rows.Add(dr); //将编辑的行添加到本地数据库中

                    dr.EndEdit();//结束编辑行
                    dB.UploadData();//上传本地数据库
                    if (dB.Fault)
                    {
                        Label1.Text = "添加失败！！";
                    }
                    else
                    {
                        FileUpload1.SaveAs(savePath1);//保存展示图
                        if (savePath2 != null) FileUpload2.SaveAs(savePath2);//保存详细图
                        Label1.Text = "添加成功！";
                    }

                    dB.OffData();
                    dB.Empty();
                }
                else
                {
                    dB.OffData();
                    dB.Empty();
                    Label1.Text = "添加失败！！该商品已存在！";
                }
            }
            else
            {
                Label1.Text = "添加失败！！数据库连接失败！";
            }
        }
        else
        {
            Label1.Text = "添加失败！！";
        }



        //Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('wwwwwwww！');</script>");
    }
}