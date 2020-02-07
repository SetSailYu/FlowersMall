<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PutOrder.aspx.cs" Inherits="Front_PutOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>提交订单</title>

    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/PutOrder.css");
        /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
    </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script type="text/javascript" src="../JS/MasterPage.js"></script>
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">


    <div class="P-MainCont">
        <div class="P-Cart">
            <div class="P-title">
                <h2>&nbsp;&nbsp;填写订单信息</h2>
            </div>
            <div class="P-itmes">
                <h3>收货人信息</h3>
                <div class="P-itmes-db">
                    <p></p>
                </div>
                <p>
                    
                    + 新增地址
                </p>
                <div class="P-itmes-db" >
                    <p>姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p>
                    <p>手机号码：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
                    <p>收货地址：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></p>
                </div>
                
            </div>
        </div>
    </div>



</asp:Content>

