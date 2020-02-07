<%@ Page Language="C#" AutoEventWireup="true" CodeFile="U_Findmima.aspx.cs" Inherits="Front_U_Findmima" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>修改密码</title>

    <style>
        @import url("../Style/save.css");
      
    </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
     <script src="../JS/U_Findpw.js"></script>
    


</head>
    
<body>
    <form id="form1" runat="server">
       <div class="find_main">
           <div class="top"> <%-- 大范围--%>
            <div class="fing_top"> <%--中间范围--%>
              <div class="top_left">
                  <asp:Image ID="Image1" runat="server" />
             <asp:Label ID="Label1" runat="server" Text="|安全中心"></asp:Label>
              </div>
              </div>
               </div>             
           <div class="container"> <%-- 大框架--%>
               <div class="section section-subnav">
                   <div class="section_subnav">
                       <ul class="subnav_process">
                            <li class="active">
                                <div>
                                    <i id="i_1" class="font_1">1</i>
                                    <p id="i_2" class="css_font">填写帐号</p>
                                </div>
                                <i></i>
                            </li>
                         
                            <li>
                                <div>
                                    <i id="i_3" class="font_2">2</i>
                                    <p id="i_4" class="css_font1">设置新密码</p>
                                </div>
                                <i></i>
                            </li>
                            <li >
                                <div>
                                    <i id="i_5" class="font_3">3</i>
                                    <p id="i_6" class="css_font2">完成</p>
                                </div>
                                <i></i>
                            </li>
                        </ul>

                   </div>
               </div>
               
           </div>
            <div class="down">
                <div class="account_1 a1"><%--显示的第一个内容--%>
                    <div class="nei1">
                        <asp:Label ID="Label2" runat="server" Text="账号:"></asp:Label><br />

                              &nbsp;&nbsp;  &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"  Height="35px" Width="184px"></asp:TextBox><br />
                        <asp:Label ID="Label3" runat="server" Text="电话"></asp:Label>:<br />
                        &nbsp;&nbsp;&nbsp;
                        &nbsp;<asp:TextBox ID="TextBox2" runat="server"  Height="35px"  Width="184px"></asp:TextBox>


                        <br />

                        <br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="确定" CssClass="butt1" BorderStyle="None"   OnClick="Button1_Click" CausesValidation="False"/>
                    </div>
                </div>
                <div class="account_2 a2">
                     <div class="nei1">
                        <asp:Label ID="Label4" runat="server" Text="新密码:"></asp:Label><br />

                              &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" TextMode="Password" runat="server" Height="35px" Width="184px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="URF2" runat="server" ControlToValidate="TextBox3" Text="请输入新密码"  CssClass="auto-style2" SetFocusOnError="True" >
                           </asp:RequiredFieldValidator>
                         <br />
                         确认密码:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Height="35px" Width="184px"></asp:TextBox>   
                         <asp:RequiredFieldValidator ID="URFV3"  ControlToValidate="TextBox4" Text="请输入" CssClass="auto-style2"  runat="server" SetFocusOnError="True"/>
               <asp:CompareValidator ID="UCV1" ControlToValidate="TextBox4" Text="密码不一致" CssClass="auto-style2" Type="String" Operator="Equal" ControlToCompare="TextBox3" runat="server" SetFocusOnError="True" />

                        <br />

                        <br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="确定"   CssClass="butt1" BorderStyle="None" OnClick="Button2_Click" />
                    </div>
                </div>
            <%--   第三个内容--%>
                  <div class="account_3 a3">
                     <div class="nei1">
                           &nbsp;&nbsp;
                         <asp:Button ID="Button3"  CausesValidation="False" runat="server" Text="去登入"  PostBackUrl="~/Front/Login.aspx" CssClass="butt1" BorderStyle="None" Font-Names="黑体"  />
                         
            </div>
           </div>

       </div>  
    </form>
</body>
</html>
