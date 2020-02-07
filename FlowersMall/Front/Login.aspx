<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>登录</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0;
        }
        /*额外样式*/
        .style1 {
        margin-left:298px;
       font-size:13px;   
        }

    </style>
    <style>
        @import url("../Style/MasterPage.css");
         @import url("../Style/Login.css");
         /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
    </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script src="../JS/MasterPage.js"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <div  class="Main" style="height: 630px"  >
        <div class="Main-Login" style="left: 0px; top: 0px">
            <div class="Login-tabs">         
                <asp:Label ID="Label1" runat="server" Text="账号密码登录" Font-Names="黑体"></asp:Label>
            </div>
               <div class="Login-user">
                <%--  账号--%>
                   <div class="Login-yh">
                       <p class="Login-shuru">
                           <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="Silver" style="margin-left: 5px;" Text="账号|"></asp:Label>
                           <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Font-Size="Medium" ForeColor="Black" Height="20px"  style="left: 51px; margin-top: 5px;" Width="65%"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="cencle1" runat="server" ControlToValidate="TextBox1" Text="⊗"  ErrorMessage="RequiredFieldValidator" CssClass="Login-validator" SetFocusOnError="True" >
                           </asp:RequiredFieldValidator> 
                       </p>
                   </div>
                <%--   密码--%>
                   <div class="Login-yh1">
                       <p class="Login-shuru">
                           <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="Silver" style="margin-left: 5px;" Text="密码|"></asp:Label>
                           <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" Font-Size="Medium" TextMode="Password" ForeColor="Black" Height="20px"  style="left: 51px; margin-top: 5px;" Width="65%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="cencle2" ControlToValidate="TextBox2" Text="⊗" CssClass="Login-validator"  runat="server" SetFocusOnError="True"/>
                       </p>
                   </div>
                   <%--   忘记密码--%>
                   <div class="lost_pw">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" GroupName="login" runat="server" Text="用户" Checked="True" />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" GroupName="login" runat="server" Text="管理员" />
                       <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style1" NavigateUrl="~/Front/U_Findmima.aspx"  >忘记密码</asp:HyperLink> 
                   </div>
                  <%--  提交按钮--%>
                  <p class="loginBut" style="left: 0px; top: 0px; width: 322px">
                      <asp:Button ID="Button1" runat="server" CssClass="loginBut1" Text="登录" BorderStyle="None" OnClick="Button1_Click"  />
                  </p>
                   <div class="bottom">
                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Front/Registanst.aspx" >一键快捷注册></asp:HyperLink>
                   </div>
               </div>
        </div>
    </div>

</asp:Content>

