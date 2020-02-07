<%@ Page Language="C#" AutoEventWireup="true" CodeFile="U_Personal.aspx.cs"  Inherits="Front_U_Personal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户中心</title>
<style type="text/css">
        @import url("../Style/Persnal.css");
   
        .auto-style1 {
        margin-top: 1px;
    }
   
        </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script src="../JS/Personal.js"></script>

</head>
    
<body>
      <form id="form1" runat="server">
   <div class="main">       
        <ul class="main-ul">
          <li class="u-li_1"> <asp:Image ID="Image1" runat="server" Height="16px" /> <asp:Label ID="Label1" Font-Names="黑体" ForeColor="Gray" 
              Font-Size="24px" runat="server" Text=" |用户中心"></asp:Label></li>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Front/Index.aspx" runat="server">返回首页</asp:HyperLink>
         <li class="u-li_2"> <asp:Button ID="Button1" runat="server" Text="退出" OnClick="Button1_Click" CssClass="over"  /></li>
            
      </ul>
       
       </div>
     <div class="neirong t1">
      <div class="u-left t2">
          <ul>   
      <li><p class="back1"><asp:HyperLink ID="HyperLink2" runat="server" Font-Names="黑体" CssClass="cont1"  Font-Size="24px">个人信息</asp:HyperLink></p></li>
 <li class="li_item"><p  class="back2"><asp:HyperLink ID="HyperLink3" CssClass="cont2" runat="server"  Font-Names="黑体" Font-Size="24px">收货信息</asp:HyperLink></p></li>
          </ul>
         </div>
         <div class="u-right r1">
      <%--     第一个显示内容--%>
        <div class="r2">
             <div class="u-left_item t3" style="bottom:227px; display:none">
             <%--     显示内容--%>
                  <h2>个人资料</h2>
                  <div class="u-table_pernal nd" >
                      
                  <asp:DataList ID="DataList1"  runat="server" OnItemCommand="DataList1_ItemCommand" >
                <ItemTemplate>
                  <ul class="u-ul_s ">
                      <li><asp:Label ID="Label2"  runat="server" Text="用户ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="personal_txt1" runat="server" Height="41px"  Width="166px" ReadOnly="True" Text='<%# Eval("u_id") %>'></asp:TextBox></li>
                       <li><asp:Label ID="Label3" runat="server" Text="用户名"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="personal_txt2" runat="server" Height="41px" Width="166px" ReadOnly="True"  Text='<%# Eval("u_name") %>'></asp:TextBox></li>
                          <li><asp:Label ID="Label4" runat="server" Text="密码"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="personal_txt3" runat="server"  ReadOnly="True"  Height="41px" Width="166px"  Text='<%# Eval("u_password") %>' ></asp:TextBox>
                          </li>
                           <li><asp:Label ID="Label5" runat="server" Text="邮箱"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="personal_txt4" runat="server" ReadOnly="True"  Height="41px" Width="166px" Text='<%# Eval("u_mail") %>'></asp:TextBox> &nbsp;</li>
                       <li><asp:Label ID="Label6" runat="server" Text="电话"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="personal_txt5" runat="server"  Height="41px" ReadOnly="True"  Width="166px" Text='<%# Eval("u_iphone") %>'></asp:TextBox>
                       </li>
                       <li><asp:Label ID="Label7" runat="server" Text="身份证"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:TextBox ID="personal_txt6" runat="server"  Height="41px" ReadOnly="True"  Width="166px" Text='<%# Eval("u_card") %>'></asp:TextBox>
                       </li>
                      <li> 
          <div class="xia"><asp:LinkButton ID="lib" runat="server"  CommandName="s1" CssClass="updata" OnClientClick="javascript:return updata_fct()" >修改</asp:LinkButton>
                      </div></li>                 
                  </ul>
                 
                </ItemTemplate>
            </asp:DataList>
                </div>
            <%--     确定修改！！--%>
                    <div class="pernal_updata nd1" style="display:none" >
                        <ul  class="u-ul_s ">
                            <li>  <asp:Label ID="Label8" runat="server" Text="用户ID:"></asp:Label> 
                                  &nbsp;<asp:TextBox ID="Updata_txt1" Height="41px"  Width="166px" runat="server" ReadOnly="True"></asp:TextBox>

                            </li>
                              <li><asp:Label ID="Label3" runat="server" Text="用户名"></asp:Label>&nbsp; <asp:TextBox ID="Updata_txt2" runat="server" Height="41px" Width="166px" OnTextChanged="Updata_txt2_TextChanged"  ></asp:TextBox></li>
                          <li><asp:Label ID="Label4" runat="server" Text="密码"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Updata_txt3" runat="server"  Height="41px" Width="166px" OnTextChanged="Updata_txt3_TextChanged" ></asp:TextBox>
                          </li>
                           <li><asp:Label ID="Label5" runat="server" Text="邮箱"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Updata_txt4" runat="server" Height="41px" Width="166px" OnTextChanged="Updata_txt4_TextChanged" ></asp:TextBox> 
                           </li>
                       <li><asp:Label ID="Label6" runat="server" Text="电话"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Updata_txt5" runat="server"  Height="41px" Width="166px" OnTextChanged="Updata_txt5_TextChanged" CssClass="auto-style1" ></asp:TextBox>
                       </li>
                       <li><asp:Label ID="Label7" runat="server" Text="身份证"></asp:Label>&nbsp; <asp:TextBox ID="Updata_txt6" runat="server"  Height="41px" Width="166px" OnTextChanged="Updata_txt6_TextChanged" ></asp:TextBox>

                       </li>
                      <li> 
          <div class="xia1"><asp:LinkButton ID="ib" runat="server"  CommandName="s2" OnClick="Lib_Click" >确定修改</asp:LinkButton>
                      </div></li>                 

                        </ul>

                        </div>
             
             
             </div>
               </div>
   <%--       第二个显示的内容--%>
          <div class="r3">
        <%------------------%>
                <div class="u-left_item right3" style="bottom:227px; display:none ">
             <%--     显示内容--%>
                  <h2>收货信息</h2>
                  <div class="u-table_pernal nd3">
                      <div class="u-nr">
                       <asp:LinkButton ID="LBuon2" runat="server" CssClass="adduser" OnClientClick="javascript:return updata_fct1()" >添加用户</asp:LinkButton>
                      </div>
                  <asp:DataList ID="DataList2" runat="server">
                <ItemTemplate>
                  <ul class="u-ul_s">     
                      <li><asp:Label ID="Lbl1"  runat="server" Text="用户ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="shou_txt1" runat="server" Height="26px" Width="153px" ReadOnly="True"  
                          Text='<%# Eval("a_id") %>'></asp:TextBox></li>
                       <li><asp:Label ID="Lbl2" runat="server" Text="收货人"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="shou_txt2" runat="server" Height="30px" Text='<%# Eval("a_name")%>'  Width="151px"></asp:TextBox></li>

                       <li><asp:Label ID="Lbl3" runat="server" Text="收货电话"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:TextBox ID="shou_txt3" runat="server"  Height="25px" Text='<%# Eval("a_iphone") %>'   Width="150px"></asp:TextBox>
                       </li>
                      <li><asp:Label ID="Lbl4" runat="server" Text="收货地址"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:TextBox ID="shou_txt4" runat="server"  Text='<%# Eval("a_address") %>'  Height="25px" Width="150px"></asp:TextBox>
                       </li>
                        <li><asp:Label ID="Lbl5" runat="server" Text="邮政编码"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("a_postcode") %>'   Height="25px" Width="150px"></asp:TextBox>
                       </li>
                                
                  </ul>
                </ItemTemplate>
            </asp:DataList>
                        </div>
                <%------------------%>
                    <div class="u-updata_address nd4" style="display: none"  >
                        <ul class="u-ul_s1">     
                      <li><p class="u_pstyle"><asp:Label ID="addLb_1"  runat="server" Text="用户ID"></asp:Label>&nbsp;&nbsp; <asp:TextBox ID="shou_txt1" runat="server" Height="26px" Width="153px" ReadOnly="True"  ></asp:TextBox>
                          <asp:Label ID="addLb_2" runat="server" Text="收货人"></asp:Label>
&nbsp;
                          <asp:TextBox ID="shou_txt2" runat="server" Height="30px" Width="151px"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="U_RF1" runat="server" ControlToValidate="shou_txt2"   Text="⊗" SetFocusOnError="true" ></asp:RequiredFieldValidator>
                          <asp:Label ID="addLb_3" runat="server" Text="收货电话"></asp:Label>
&nbsp;&nbsp;
                          <asp:TextBox ID="shou_txt3" runat="server"  Height="25px"   Width="150px"></asp:TextBox>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="⊗"
                          ControlToValidate="shou_txt3"  ErrorMessage="RegularExpressionValidator" ValidationExpression="^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$"></asp:RegularExpressionValidator>
                          </p>
                            </li>
                            <li>
                                <p class="u_pstyle">
                                    <asp:Label ID="addLb_4" runat="server" Text="收货地址"></asp:Label>
&nbsp;<asp:TextBox ID="shou_txt4" runat="server"   Height="25px" Width="150px"></asp:TextBox>
                                    <asp:Label ID="addLb_5" runat="server" Text="邮政编码"></asp:Label>
                                    &nbsp;&nbsp;<asp:TextBox ID="shou_txt5" runat="server"    Height="25px" Width="150px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="U_RV4" runat="server" ControlToValidate="shou_txt5" Text="⊗" ValidationExpression="^[1-9]\\d{5}$" SetFocusOnError="true"></asp:RegularExpressionValidator>
                                </p>
                            </li>
                          <li>
                               <p style="text-align:center"><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">添加</asp:LinkButton></p> 
                          </li>      
                  </ul>

                    </div>
                     </div>
         
               



               </div>


          </div>
        
         
         
         
<%-- -------------------   --%>     
         </div>

           
    </form>
          
</body>
</html>
