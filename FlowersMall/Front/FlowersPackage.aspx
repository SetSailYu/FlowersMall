<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FlowersPackage.aspx.cs" Inherits="Front_FlowersPackage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>鲜花套餐速递</title>

    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/FlowersPackage.css");
        /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
    </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script type="text/javascript" src="../JS/MasterPage.js"></script>
    <script type="text/javascript" src="../JS/FlowersPackage.js"></script>
    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">

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
                                    <asp:Label ID="Label1" CssClass="M-cart_num" runat="server" Text="0"></asp:Label>
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
<%--<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>--%>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <div class="F-top">
        <div class="F-RightTop">
            <!--动态轮播图区 start-->
            <div class="FF-slideshow">
                <div class="center-left-img">
                    <!--图片盒子 start-->
                    <div class="imgBox">
                        <div class="img-slide ">
                            <asp:HyperLink ID="HyperLink1" runat="server">
                        <div class="fill" style="background-image:url('../Images/14.jpg')"></div>
                            </asp:HyperLink>
                        </div>
                        <div class="img-slide ">
                            <asp:HyperLink ID="HyperLink2" runat="server">
                        <div class="fill" style="background-image:url('../Images/15.jpg')"></div>
                            </asp:HyperLink>
                        </div>
                        <div class="img-slide ">
                            <asp:HyperLink ID="HyperLink3" runat="server">
                        <div class="fill" style="background-image:url('../Images/16.jpg')"></div>
                            </asp:HyperLink>
                        </div>
                    </div>
                    <!--图片盒子 end-->
                    <!--浮动圆点 start-->
                    <div class="dot">
                        <div><i class="iconfont font-dot dot1" onclick="DotClick(0)" onmouseover="DotHover(0)">&#xe609;</i></div>
                        <div><i class="iconfont font-dot dot2" onclick="DotClick(1)" onmouseover="DotHover(1)">&#xe609;</i></div>
                        <div><i class="iconfont font-dot dot3" onclick="DotClick(2)" onmouseover="DotHover(2)">&#xe609;</i></div>
                    </div>
                    <!--浮动圆点 end-->
                    <!--切换箭头 start-->
                    <div class="switcher-div">
                        <span class="switcher FF-s-left">
                            <i class="iconfont " onclick="FFSwitcherClick(0)">&#xe63b;</i>
                        </span>
                        <span class="switcher FF-s-right">
                            <i class="iconfont " onclick="FFSwitcherClick(1)">&#xe63b;</i>
                        </span>
                    </div>
                    <!--切换箭头 end-->

                </div>
                <script type="text/javascript" src="../JS/index-img-slide.js"></script>
            </div>
            <!--动态轮播图区 end-->
        </div>
    </div>
    
    <!-- 主内容区 start-->
    <div class="F-MinCon">

        <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
        <%-- AJAX控件1实现局部刷新（异步回送） --%>
        <%--<asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
            <ContentTemplate>--%>

                <!-- 筛选 start-->
                <div class="F-filterbar">
                    <ul class="F-filter-items">
                        <li>
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="F-classify-box F-classify2" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem>全部</asp:ListItem>
                                <asp:ListItem>爱情系列</asp:ListItem>
                                <asp:ListItem>生日系列</asp:ListItem>
                                <asp:ListItem>婚庆系列</asp:ListItem>
                                <asp:ListItem>生活系列</asp:ListItem>
                                <asp:ListItem>商务系列</asp:ListItem>
                                <asp:ListItem>殡仪系列</asp:ListItem>
                                <asp:ListItem>其它系列</asp:ListItem>
                            </asp:DropDownList>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkButton1" CssClass="F-filter-num" OnClick="LinkButton1_Click" runat="server">
                                销量
                                <i class="iconfont F-icon1">&#xe60c;</i>
                            </asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkButton2" CssClass="F-filter-price" OnClick="LinkButton2_Click" runat="server">
                                价格
                                <i class="iconfont F-icon2">&#xe60c;</i>
                            </asp:LinkButton>
                        </li>
                    </ul>
                </div>
                <!-- 筛选 end-->

                <!-- 显示商品 start-->
                <div class="F-ShowCommodity">
                    <asp:DataList ID="DataList1" CssClass="F-ShowCommodity-list" RepeatColumns="5" runat="server" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                            <div class="F-Show-grid">
                                <div class="F-Show-img-box">
                                    <asp:LinkButton ID="LinkButton3" CommandArgument='<%# Eval("c_id") %>' CommandName="discribe" runat="server">
                                        <img src="../Images/img/<%# Eval("c_pic") %>" />
                                    </asp:LinkButton>
                                </div>
                                <div>
                                    <div class="F-Show-price">
                                        <span class="F-Show-price-sign">￥</span>
                                        <asp:Label ID="Label4" CssClass="F-Show-price-num" runat="server" Text='<%# Convert.ToDouble( Eval("c_price")) %>'></asp:Label>
                                    </div>
                                    <div class="F-Show-title">
                                        <asp:LinkButton ID="LinkButton4" CommandArgument='<%# Eval("c_id") %>' CommandName="discribe" runat="server">
                                            <asp:Label ID="Label5" CssClass="F-Show-name-title" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                                            <asp:Label ID="Label6" CssClass="F-Show-language" runat="server" Text='<%# Eval("c_flower_language") %>'></asp:Label>
                                        </asp:LinkButton>
                                    </div>
                                    <div>
                                        <asp:LinkButton ID="LinkButton8" CssClass="F-Show-operate" CommandArgument='<%# Eval("c_id") %>' CommandName="buy" runat="server" >
                                            <i class="iconfont">&#xe60a;</i>加入购物车
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <!-- 显示商品 start-->

            <%--</ContentTemplate>
        </asp:UpdatePanel>--%>
    </div>
    <!-- 主内容区 end-->

</asp:Content>

