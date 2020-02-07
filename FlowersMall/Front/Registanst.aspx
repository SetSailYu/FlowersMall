<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registanst.aspx.cs" Inherits="Registanst" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <title>注册</title>
    <style type="text/css">
        .auto-style1 {
            /*文本输入框*/
        margin: 10px 10px 5px 25px;
            padding-bottom: 1px;
            padding-top: 1px;
            width: 82%;
            height: 33px;
            outline: none;
            overflow: visible; /*溢出不被剪切*/;
            position: relative; /*相对父元素窗口定位*/;
            z-index: 7;
            left: 0px;
            top: -2px;
        }
        .auto-style2 {
            /*文本输入框验证*/
        color: red;
            font-size: medium;
            position: absolute;
            right: 2%;
            line-height: 33px;
            top: 1px;
        }
    </style>
     <style type="text/css">
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
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div  class="Main" style="height: 630px"  >
        
        <div class="Main-Registanst" style="left: 0px; top: 0px">
            <div class="Reistanst-tabs1">         
                <asp:Label ID="Label1" runat="server" Text="用户注册" Font-Names="黑体"></asp:Label>
           
            </div>
         
               <div class="Login-user">
                <%--     账号--%>
                   <div class="Reistanst-yh">
                       <p class="Reistanst-shuru">
                           <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="Silver" style="margin-left: 5px;" Text="用户名|"></asp:Label>
                           <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Font-Size="Medium" ForeColor="Black" Height="20px"  style="left: 51px; margin-top: 5px;" Width="65%"></asp:TextBox>  
                                <asp:RequiredFieldValidator ID="RF1" runat="server" ControlToValidate="TextBox1" Text="⊗"  ErrorMessage="RequiredFieldValidator" CssClass="Login-validator" SetFocusOnError="True" >
                           </asp:RequiredFieldValidator>
                       </p>
                       </div>
                   <%--电话--%>
                     <div class="Reistanst-yh">
                       <p class="Login-shuru">
                           <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="Silver" style="margin-left: 5px;" Text="电话|"></asp:Label>
                           <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" Font-Size="Medium" ForeColor="Black" Height="20px"  style="left: 51px; margin-top: 5px;" Width="65%"></asp:TextBox> 
                           <asp:RegularExpressionValidator ID="RV1" runat="server" Text="⊗" 
                            CssClass="Login-validator"  ControlToValidate="TextBox2"  ErrorMessage="RegularExpressionValidator" ValidationExpression="^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$"></asp:RegularExpressionValidator>
                       </p>
                       </div>
                <%--   密码--%>
                   <div class="Reistanst-yh1" style="margin-left: 60px">
                       <p class="auto-style1">
                           <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="Silver" style="margin-left: 5px;" Text="密码|"></asp:Label>
                           <asp:TextBox ID="TextBox3" runat="server" BorderStyle="None" Font-Size="Medium" TextMode="Password" ForeColor="Black" Height="20px"  style="left: 51px; margin-top: 5px;" Width="65%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RF2" runat="server" ControlToValidate="TextBox3" Text="⊗"  ErrorMessage="RequiredFieldValidator" CssClass="auto-style2" SetFocusOnError="True" >
                           </asp:RequiredFieldValidator>
                       </p>
                     
                   </div>
                <%-- 确认密码--%>
                     <div class="Reistanst-yh1" style="margin-left: 60px">
                       <p class="Login-shuru">
                           <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="Silver" style="margin-left: 5px;" Text="确认密码|"></asp:Label>
                           <asp:TextBox ID="TextBox4" runat="server" BorderStyle="None" Font-Size="Medium" TextMode="Password" ForeColor="Black" Height="20px"  style="left: 51px; margin-top: 5px;" Width="65%"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RFV3" ControlToValidate="TextBox4" Text="⊗" CssClass="Login-validator"  runat="server" SetFocusOnError="True"/>
               <asp:CompareValidator ID="CV1" ControlToValidate="TextBox4" Text="⊗" CssClass="Login-validator" Type="String" Operator="Equal" ControlToCompare="TextBox3" runat="server" SetFocusOnError="True" />
                       </p>
                     
                   </div>
                     <%--    邮箱--%>
                     <div class="Reistanst-yh">
                       <p class="Reistanst-shuru">
                           <asp:Label ID="Label6" runat="server" Font-Size="Small" ForeColor="Silver" style="margin-left: 5px;" Text="邮箱|"></asp:Label>
                           <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None" Font-Size="Medium" ForeColor="Black" Height="20px"  style="left: 51px; margin-top: 5px;" Width="65%"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RV2" runat="server" Text="⊗" 
                            CssClass="Login-validator"  ControlToValidate="TextBox5"  ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                       </p>
                       </div>

      <%--提交按钮--%>
             <p class="ReistBut" style="left: 0px; top: 0px; width: 322px">
                 <asp:Button ID="Button1" runat="server" CssClass="loginBut2" Text="注册" OnClick="Button1_Click" BorderStyle="None" />
                       </p>
            <%-- 地下--%>
             <div class="Reistanst-bottom" style="left: 0px; top: 1px">
                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Front/Login.aspx" >已有账号，去登录></asp:HyperLink>
                   </div>
               </div>
                 
               


        </div>



    </div>




</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

