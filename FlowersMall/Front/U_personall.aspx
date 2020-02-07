<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="U_personall.aspx.cs" Inherits="Front_U_personall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title>用户中心</title>
<style type="text/css">
        @import url("../Style/U_personall.css");
   @import url("../Style/MasterPage.css");
        @import url("../Style/DetailsFlower.css");
   /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
        .auto-style1 {
        margin-top: 1px;
    }
   
        </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script src="../JS/Personal.js"></script>
     <script type="text/javascript" src="../JS/MasterPage.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <!-- 导航栏 start -->
            <div class="M-nav">
                <!-- 全部商品导购 start -->
                <div class="nav-con">
                    <div class="categorys">
                        <h3 class="categorys-title">
                            <asp:HyperLink ID="HyperLink14" runat="server">全部商品导购</asp:HyperLink>
                        </h3>
                    </div>
                    <div class="dropdown-cate M-Flo-dro">
                        <!-- 鲜花系列 start -->
                        <h4>
                            <asp:LinkButton ID="LinkButton2" OnClick="XH_LinkButton1_Click" runat="server">鲜花系列</asp:LinkButton>
                        </h4>
                        <ul>
                            <li>
                                <asp:LinkButton ID="LinkButton5" OnClick="AQ_LinkButton1_Click" runat="server">爱情系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton6" OnClick="SR_LinkButton1_Click" runat="server">生日系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton7" OnClick="HQ_LinkButton1_Click" runat="server">婚庆系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton8" OnClick="SH_LinkButton1_Click" runat="server">生活系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton9" OnClick="SW_LinkButton1_Click" runat="server">商务系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton10" OnClick="BY_LinkButton1_Click" runat="server">殡仪系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton11" OnClick="QT_LinkButton1_Click" runat="server">其它系列</asp:LinkButton>
                            </li>
                        </ul>
                        <!-- 鲜花系列 end -->
                        <!-- 鲜花花材 start -->
                        <h4>
                            <asp:HyperLink ID="HyperLink27" runat="server">鲜花花材</asp:HyperLink>
                        </h4>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink28" runat="server">玫瑰</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink ID="HyperLink29" runat="server">康乃馨</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink ID="HyperLink30" runat="server">百合</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink ID="HyperLink31" runat="server">向日葵</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink ID="HyperLink32" runat="server">扶郎</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink ID="HyperLink33" runat="server">郁金香</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink ID="HyperLink34" runat="server">马蹄莲</asp:HyperLink>
                            </li>
                        </ul>
                        <!-- 鲜花花材 end -->                        
                        <!-- 永生花 start -->                        
                        <div class="cate-cake stature1" >
                            <asp:LinkButton ID="LinkButton40" OnClick="YS_LinkButton1_Click" runat="server">
                                <span><i class="iconfont">&#xe604;</i></span>
                                永生花
                            </asp:LinkButton>
                            <div class="M-baffle1"></div>
                            <div class="right-menu rm1" style="bottom: 227px; display: none;">
                                <b style="bottom: 191px;"></b>
                                <h5>永生花类别</h5>
                                <div class="link-img">
                                    <asp:LinkButton ID="LinkButton15" OnClick="JD_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/pimg/ysh_brand_menu_01.jpg" height="62" width="96">经典花盒
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton16" OnClick="JX_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/pimg/ysh_brand_menu_02.jpg" height="62" width="96">巨型玫瑰
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton17" OnClick="XY_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/pimg/ysh_brand_menu_03.jpg" height="62" width="96">薰衣草
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton18" OnClick="PH_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/pimg/ysh_brand_menu_04.jpg" height="62" width="96">永生瓶花
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton19" OnClick="TS_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/pimg/ysh_brand_menu_05.jpg" height="62" width="96">特色永生花
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <ul>
                                <li>
                                    <asp:LinkButton ID="LinkButton20" OnClick="PH_LinkButton1_Click" runat="server">永生瓶花</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton21" OnClick="JD_LinkButton1_Click" runat="server">经典花盒</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton22" OnClick="JX_LinkButton1_Click" runat="server">巨型玫瑰</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton23" OnClick="TS_LinkButton1_Click" runat="server">特色永生花</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton24" OnClick="XY_LinkButton1_Click" runat="server">薰衣草</asp:LinkButton>
                                </li>
                            </ul>
                        </div>
                        <!-- 永生花 end --> 
                        <!-- 礼品 start -->                        
                        <div class="cate-cake stature2">
                            <asp:LinkButton ID="LinkButton39" OnClick="LP_LinkButton1_Click" runat="server">
                                <span><i class="iconfont">&#xe604;</i></span>
                                礼品
                            </asp:LinkButton>
                            <div class="M-baffle2"></div>
                            <div class="right-menu rm2" style="bottom: 227px; display: none;">
                                <h5>礼品类别</h5>
                                <div class="link-img">
                                    <asp:LinkButton ID="LinkButton32" OnClick="YY_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/assets/img/gifts/gifts-musicbox.png" height="62" width="58">音乐盒
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton33" OnClick="JB_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/assets/img/gifts/gifts-goldenflower.png" height="62" width="58">金箔花
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton34" OnClick="SJ_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/assets/img/gifts/gifts-crystallaser.png" height="62" width="58">3D水晶内雕
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton35" OnClick="SM_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/assets/img/gifts/gifts-shoushi.png" height="62" width="58">首饰/美妆
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton36" OnClick="QK_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/assets/img/gifts/gifts-chocolates.png" height="62" width="58">巧克力
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton37" OnClick="GS_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/assets/img/gifts/gifts-toys.png" height="62" width="58">公仔/睡枕
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton38" OnClick="BQ_LinkButton1_Click" runat="server">
                                        <img src="//img02.hua.com/pc/assets/img/gifts/gifts-dengshi.png" height="62" width="58">摆件/其他
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <ul>
                                <li>
                                    <asp:LinkButton ID="LinkButton25" OnClick="YY_LinkButton1_Click" runat="server">音乐盒</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton26" OnClick="JB_LinkButton1_Click" runat="server">金箔花</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton27" OnClick="SJ_LinkButton1_Click" runat="server">3D水晶内雕</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton28" OnClick="SM_LinkButton1_Click" runat="server">首饰/美妆</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton29" OnClick="QK_LinkButton1_Click" runat="server">巧克力</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton30" OnClick="GS_LinkButton1_Click" runat="server">公仔/睡枕</asp:LinkButton>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton31" OnClick="BQ_LinkButton1_Click" runat="server">摆件/其他</asp:LinkButton>
                                </li>
                            </ul>
                        </div>
                        <!-- 礼品 end -->                                               
                    </div>
                </div>
                <!-- 全部商品导购 end -->
                <ul class="nav">
                    <li>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Front/Index.aspx" runat="server">首页</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink6" NavigateUrl="~/Front/U_personall.aspx" ForeColor="#FF6A00" runat="server">个人用户中心</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink7" NavigateUrl="~/Front/ShoppingCart.aspx" runat="server">购物车</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink5" NavigateUrl="~/Front/MyOder.aspx" runat="server">我的订单</asp:HyperLink>
                    </li>
                </ul>
                
            </div>
            <!-- 导航栏 end -->

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    
     <div class="neirong t1">
      <div class="u-left t2">
          <ul class="u-t2">   
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

</asp:Content>

