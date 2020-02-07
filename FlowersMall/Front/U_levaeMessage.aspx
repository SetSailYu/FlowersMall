<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="U_levaeMessage.aspx.cs" Inherits="Front_U_levaeMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>留言</title>
        <style>
        @import url("../Style/MasterPage.css");
         @import url("../Style/Message.css");
         /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");

            .auto-style2 {
                margin-bottom: 0;
            }

    </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script src="../JS/MasterPage.js"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">

    <!-- 右侧链接 start -->
            <div class="M-R-link">
                <div class="M-R-con">
                    <div class="M-R-quick-link">
                        <ul>
                            <!-- 用户 -->
                            <li>
                                <asp:HyperLink ID="HyperLink101" NavigateUrl="~/Front/U_personall.aspx" runat="server" ToolTip="用户中心">
                                <i class="iconfont">&#xe65d;</i>
                                </asp:HyperLink>
                                <!-- ***** 未登录 ***** -->
                                <div class="ibar_login_box" style="display: none;">
                                    <div class="avatar_box" id="loginStats">
                                    </div>
                                </div>
                            </li>
                            <!-- 购物车 -->
                            <li id="shopCart">
                                <asp:HyperLink ID="HyperLink102" NavigateUrl="~/Front/ShoppingCart.aspx" CssClass="M-message_list" runat="server">
                                    <br />
                                    <i class="iconfont">&#xe60a;</i>
                                    <div class="M-span">购<br />
                                        物<br />
                                        车</div>
                                    <asp:Label ID="Label6" CssClass="M-cart_num" runat="server" Text="0"></asp:Label>
                                </asp:HyperLink>
                                <%--<a href="javascript:void(0)" class="message_list"><i class="ico_cart"></i>--%>
                            </li>
                            <!-- 我的订单 -->
                            <li>
                                <asp:HyperLink ID="HyperLink64" NavigateUrl="~/Front/MyOder.aspx" runat="server" ToolTip="我的订单">
                                <i class="iconfont">&#xe618;</i>
                                </asp:HyperLink>
                                <%--<a href="javascript:void(0)" class="mpbtn_histroy"><i class="ico_histroy"></i></a>--%>
                                <div class="mp_tooltip" style="display: none; left: -150px; visibility: hidden;">
                                    <a href="javascript:void(0)" class="mpbtn_histroy" style="color: #595656; font-size: 14px; width: 100%; background: #fff; border-radius: 3px 0 0 3px;">最近查看</a>
                                    <i class="icon_arrow_right_white"></i>
                                </div>
                            </li>
                            <!-- 我的收藏 -->
                            <li>
                                <asp:HyperLink ID="HyperLink63" runat="server">
                                <i class="iconfont">&#xe666;</i>
                                </asp:HyperLink>
                                <%--<a href="javascript:void(0)" class="history_list"><i class="ico_collect"></i></a>--%>
                                <div class="mp_tooltip" style="display: none; left: -150px; visibility: hidden;">
                                    <a href="javascript:void(0)" class="history_list" style="color: #595656; font-size: 14px; width: 100%; background: #fff; border-radius: 3px 0 0 3px;">我的收藏</a>
                                    <i class="icon_arrow_right_white"></i>
                                </div>
                            </li>
                            <!-- 电话 -->
                            <li>
                                <asp:HyperLink ID="HyperLink65" runat="server">
                                <i class="iconfont">&#xe65c;</i>
                                </asp:HyperLink>
                                <%--<a href="javascript:void(0)" class="leave_message"><i class="ico_phone"></i></a>--%>
                                <div class="mp_tooltip" style="display: none; left: -150px; visibility: hidden;"><span id="rightbartel">400-889-8188</span><i class="icon_arrow_right_white"></i></div>
                            </li>
                            <!-- 客服 -->
                            <li>
                                <asp:HyperLink ID="HyperLink66" runat="server">
                                <i class="iconfont">&#xe634;</i>
                                </asp:HyperLink>
                                <%--<a id="kefu" href="javascript:;" target="_blank" class="mpbtn_recharge"><i class="ico_headset"></i></a>--%>
                                <div class="mp_tooltip" style="display: none; left: -150px; visibility: hidden;">
                                    <a id="kefu1" href="javascript:;" target="_blank" class="mpbtn_recharge1" style="color: #595656; font-size: 14px; width: 100%; background: #fff; border-radius: 3px 0 0 3px;" title="在线客服">在线客服
                                    </a>
                                    <i class="icon_arrow_right_white"></i>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="M-R-con-bottom">
                        <ul>
                            <!-- 二维码 -->
                            <li>
                                <asp:HyperLink ID="HyperLink103" runat="server">
                                <i class="iconfont">&#xe621;</i>
                                </asp:HyperLink>
                            </li>
                            <!-- 反馈 -->
                            <li>
                                <asp:HyperLink ID="HyperLink104" NavigateUrl="~/Front/U_levaeMessage.aspx" runat="server">
                                <i class="iconfont">&#xe622;</i>
                                </asp:HyperLink>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 右侧链接 end -->

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <div class="message_Main">
          <div class="message_N">
            <div class="message_N1">
                <div class="wrapper-title">
            <h3>所有用户评价</h3>
            <p >本评价系统自2019 - 10 - 30开通，累计商品评价348567条</p>
        </div>
                <div class="List_message">
                    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style2" >
                          <ItemTemplate>
                           
                            <div class="message_box">
                                <div class="mess_name">
                                    <asp:Label ID="Label1" Font-Names="黑体"  Font-Size="15" runat="server" Text='<%# Eval("u_name") %>' ></asp:Label>

                                </div><br />
                                <div class="mess_text">
                                    <asp:Label ID="Label2" runat="server" Font-Size="13" Font-Names="黑体" Text='<%# Eval("u_information") %>'>
                                        
                                    </asp:Label>

                                </div>
                                <div class="say">
                                    <asp:Label ID="Label4" runat="server"  Text="客服"></asp:Label>
                                     <asp:Label ID="Label5" runat="server"  Text='<%# Eval("u_suler") %>'></asp:Label>
                                </div>
                                     <div class="mess_time">
                                         <div  class="mess_time1" >
                                         <asp:Label ID="Label3" runat="server"  Font-Size="8" Text='<%# Eval("u_time") %>' ></asp:Label>
                                             </div>
                                     </div>
                             
                            </div>
                              <br />
                  <br />
                        </ItemTemplate>
                    </asp:DataList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Flower_ShopConnectionString %>" SelectCommand="SELECT [u_name], [u_time], [u_information], [u_suler] FROM [lvmessage_Table]"></asp:SqlDataSource>
                </div>
                <div class="mess_buton">
                    <asp:Button ID="Button1" Font-Names="黑体" Font-Size="20px" CssClass="mess_buton1" runat="server" Text=" 写留言" BorderStyle="None" PostBackUrl="~/Front/huifu.aspx" />
                </div>
                </div>
              
           </div>


     </div>


</asp:Content>

