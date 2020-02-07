<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Front_Index" %>
<%@ MasterType VirtualPath="../MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>首页</title>

    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/Index.css");
        /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
    </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script type="text/javascript" src="../JS/MasterPage.js"></script>
    

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
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    该标签被注释掉后母版定义在搜索框下的文字将显示出来
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    该标签注被释掉后母版定义的导航栏将会显示出来
</asp:Content>--%>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <!--动态轮播图区 start-->
    <div class="slideshow">
        <div class="center-left-img">
            <!--图片盒子 start-->
            <div class="imgBox">
                <div class="img-slide " >
                    <asp:HyperLink ID="HyperLink1" runat="server">
                        <div class="fill" style="background-image:url('../Images/1.jpg')"></div>
                    </asp:HyperLink>
                </div>
                <div class="img-slide " >
                    <asp:HyperLink ID="HyperLink2" runat="server">
                        <div class="fill" style="background-image:url('../Images/2.jpg')"></div>
                    </asp:HyperLink>
                </div>
                <div class="img-slide " >
                    <asp:HyperLink ID="HyperLink3" runat="server">
                        <div class="fill" style="background-image:url('../Images/3.jpg')"></div>
                    </asp:HyperLink>
                </div>
                <div class="img-slide " >
                    <asp:HyperLink ID="HyperLink4" runat="server">
                        <div class="fill" style="background-image:url('../Images/4.jpg')"></div>
                    </asp:HyperLink>
                </div>
                <div class="img-slide " >
                    <asp:HyperLink ID="HyperLink5" runat="server">
                        <div class="fill" style="background-image:url('../Images/5.jpg')"></div>
                    </asp:HyperLink>
                </div>
            </div>
            <!--图片盒子 end-->
            <!--浮动圆点 start-->
            <div class="dot">
                <div><i class="iconfont font-dot dot1" onclick="DotClick(0)" onmouseover="DotHover(0)">&#xe609;</i></div>
                <div><i class="iconfont font-dot dot2" onclick="DotClick(1)" onmouseover="DotHover(1)">&#xe609;</i></div>
                <div><i class="iconfont font-dot dot3" onclick="DotClick(2)" onmouseover="DotHover(2)">&#xe609;</i></div>
                <div><i class="iconfont font-dot dot4" onclick="DotClick(3)" onmouseover="DotHover(3)">&#xe609;</i></div>
                <div><i class="iconfont font-dot dot5" onclick="DotClick(4)" onmouseover="DotHover(4)">&#xe609;</i></div>
            </div>
            <!--浮动圆点 end-->
            <!--切换箭头 start-->
            <div class="switcher-div">
                <span class="switcher s-left">
                    <i class="iconfont " onclick="SwitcherClick(0)">&#xe63b;</i>
                </span>
                <span class="switcher s-right">
                    <i class="iconfont " onclick="SwitcherClick(1)">&#xe63b;</i>
                </span>
            </div>
            <!--切换箭头 end-->
            <!--右侧推荐 start-->
            <div class="I-right-recommend">
                <asp:DataList ID="DataList6" CssClass="I-recommend-bd" runat="server" OnItemCommand="DataList6_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton17" CssClass="I-recommend-a" runat="server" CommandArgument='<%# Eval("c_id") %>' CommandName="discribe">
                            <img src="../Images/<%# Eval("c_pic") %>" height="140" width="210">
                            <div class="I-rightbox">
                                <p class="I-rightbox-name">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                                </p>
                                <p class="I-rightbox-price">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Convert.ToDouble( Eval("c_price")) %>'></asp:Label>
                                    元
                                </p>
                            </div>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <script type="text/javascript" >
                
            </script>
            <!--右侧推荐 end-->

        </div>
        <script type="text/javascript" src="../JS/index-img-slide.js"></script>
    </div>
    <!--动态轮播图区 end-->
    
    <!--主内容区 start-->
    <div class="I-con">

        <!--服务 start-->
        <div class="I-toper-server">
            <ul>
                <li>
                    <asp:HyperLink ID="HyperLink23" runat="server">
                        <i class="iconfont">&#xe605;</i>
                        <h4>鲜花电商龙头</h4>
                        <p>销量领先，权威认证龙头企业</p>
                    </asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink24" runat="server">
                        <i class="iconfont">&#xe6a9;</i>
                        <h4>14年品牌 真实口碑</h4>
                        <p>
                            最近评价
                            <asp:Label ID="Label4" runat="server" Text="348314"></asp:Label>
                            条
                        </p>
                    </asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink25" runat="server">
                        <i class="iconfont">&#xe612;</i>
                        <h4>鲜花实拍秀展示</h4>
                        <p>敢展现送前实拍的鲜花网</p>
                    </asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink26" runat="server">
                        <i class="iconfont">&#xe629;</i>
                        <h4>3小时送花</h4>
                        <p>全国连锁，3小时送2000城市</p>
                    </asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink27" runat="server">
                        <i class="iconfont">&#xe901;</i>
                        <h4>200%退赔承诺</h4>
                        <p>可靠的售后保障</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div>
        <!--服务 end-->

        <!--限时推荐 start-->
        <div class="I-time-limit">
            <div class="I-title">
                <i class="iconfont">&#xe616;</i>
                限时推荐
            </div>
            <asp:DataList ID="DataList5" CssClass="I-product-list" RepeatColumns="3" runat="server" OnItemCommand="DataList5_ItemCommand">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton17" runat="server" CommandArgument='<%# Eval("c_id") %>' CommandName="discribe">
                        <img alt="" src="../Images/img/<%# Eval("c_pic") %>" />
                        <div class="I-recommend">
                            <p class="I-recommend-name">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                            </p>
                            <p class="I-recommend-price">
                                ￥<asp:Label ID="Label6" runat="server" Text='<%# Convert.ToDouble( Eval("c_price")) %>'></asp:Label>
                            </p>
                            <p class="I-recommend-discount">
                                <i class="iconfont">&#xe60c;</i>
                                直降
                                <asp:Label ID="Label5" runat="server" Text='<%# Convert.ToDouble( Eval("c_price_alt"))* -1 %>'></asp:Label>
                                元
                            </p>
                        </div>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:DataList>
            <div class="I-comic-choose">
                <asp:HyperLink ID="HyperLink28" runat="server">
                    <img src="../Images/10.jpg" />
                </asp:HyperLink>
            </div>
        </div>
        <!--限时推荐 end-->

        <%--<!--专区模板 start-->
        <div class="I-floor f0">
            <!--专区标题 start-->
            <div class="I-hd">
                <asp:HyperLink ID="HyperLink6" NavigateUrl="Index.aspx" CssClass="I-more" runat="server">更多爱情鲜花 >></asp:HyperLink>
                <h3>
                    <asp:HyperLink ID="HyperLink7" NavigateUrl="Index.aspx" runat="server">爱情鲜花</asp:HyperLink>
                    <span>送·让你怦然心动的人</span>
                </h3>
            </div>
            <!--专区标题 end-->
            <!--专区内容 start-->
            <div class="I-bd">
                <!--专区内容左侧 start-->
                <div class="I-bd-1">
                    <div>
                        <asp:HyperLink ID="HyperLink8" NavigateUrl="Index.aspx" runat="server">
                            <img src="../Images/6.jpg"/>
                        </asp:HyperLink>
                    </div>
                    <asp:HyperLink ID="HyperLink9" CssClass="I-banner-link" runat="server" NavigateUrl="Index.aspx">爱情鲜花专区 >></asp:HyperLink>
                </div>
                <!--专区内容左侧 end-->
                <!--专区内容右侧 start-->
                <ul  class="I-floor-products">
                    <li>
                        <asp:HyperLink ID="HyperLink10" CssClass="I-floor-products-link" runat="server">
                            <span class="I-img-box">
                                <asp:Image ID="Image1" runat="server" />
                            </span>
                            <asp:Label ID="Label1" CssClass="I-product-title" runat="server" >爱情 · 一往情深</asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label2" CssClass="I-price-num" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label3" runat="server" ></asp:Label> 件</p>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink11" CssClass="I-floor-products-link" runat="server">
                            <span class="I-img-box">
                                <asp:Image ID="Image2" runat="server" />
                            </span>
                            <asp:Label ID="Label4" CssClass="I-product-title" runat="server" >爱情 · 一往情深</asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label5" CssClass="I-price-num" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label6" runat="server" ></asp:Label> 件</p>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink12" CssClass="I-floor-products-link" runat="server">
                            <span class="I-img-box">
                                <asp:Image ID="Image3" runat="server" />
                            </span>
                            <asp:Label ID="Label7" CssClass="I-product-title" runat="server" >爱情 · 一往情深</asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label8" CssClass="I-price-num" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label9" runat="server" ></asp:Label> 件</p>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink13" CssClass="I-floor-products-link" runat="server">
                            <span class="I-img-box">
                                <asp:Image ID="Image4" runat="server" />
                            </span>
                            <asp:Label ID="Label10" CssClass="I-product-title" runat="server" >爱情 · 一往情深</asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label11" CssClass="I-price-num" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label12" runat="server" ></asp:Label> 件</p>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink14" CssClass="I-floor-products-link" runat="server">
                            <span class="I-img-box">
                                <asp:Image ID="Image5" runat="server" />
                            </span>
                            <asp:Label ID="Label13" CssClass="I-product-title" runat="server" >爱情 · 一往情深</asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label14" CssClass="I-price-num" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label15" runat="server" ></asp:Label> 件</p>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink15" CssClass="I-floor-products-link" runat="server">
                            <span class="I-img-box">
                                <asp:Image ID="Image6" runat="server" />
                            </span>
                            <asp:Label ID="Label16" CssClass="I-product-title" runat="server" >爱情 · 一往情深</asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label17" CssClass="I-price-num" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label18" runat="server" ></asp:Label> 件</p>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink16" CssClass="I-floor-products-link" runat="server">
                            <span class="I-img-box">
                                <asp:Image ID="Image7" runat="server" />
                            </span>
                            <asp:Label ID="Label19" CssClass="I-product-title" runat="server" >爱情 · 一往情深</asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label20" CssClass="I-price-num" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label21" runat="server" ></asp:Label> 件</p>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink17" CssClass="I-floor-products-link" runat="server">
                            <span class="I-img-box">
                                <asp:Image ID="Image8" runat="server" />
                            </span>
                            <asp:Label ID="Label22" CssClass="I-product-title" runat="server" >爱情 · 一往情深</asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label23" CssClass="I-price-num" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label24" runat="server" ></asp:Label> 件</p>
                        </asp:HyperLink>
                    </li>
                </ul>
                <!--专区内容右侧 end-->
            </div>
            <!--专区内容 end-->
        </div>
        <!--专区模板 end-->--%>

        <!--爱情专区模板 start-->
        <div class="I-floor ">
            <!--爱情专区标题 start-->
            <div class="I-hd">
                <asp:LinkButton ID="LinkButton1" CssClass="I-more" OnClick="AQ_LinkButton1_Click" runat="server">更多爱情鲜花 >></asp:LinkButton>
                <%--<asp:HyperLink ID="HyperLink18"   runat="server">更多爱情鲜花 >></asp:HyperLink>--%>
                <h3>
                    <asp:LinkButton ID="LinkButton2" OnClick="AQ_LinkButton1_Click" runat="server">爱情鲜花</asp:LinkButton>
                    <span>送·让你怦然心动的人</span>
                </h3>
            </div>
            <!--爱情专区标题 end-->
            <!--爱情专区内容 start-->
            <div class="I-bd">
                <!--爱情专区内容左侧 start-->
                <div class="I-bd-1 I-f1">
                    <div>
                        <asp:LinkButton ID="LinkButton3" OnClick="AQ_LinkButton1_Click" runat="server">
                            <img src="../Images/6.jpg"/>
                        </asp:LinkButton>
                    </div>
                    <asp:LinkButton ID="LinkButton4" CssClass="I-banner-link" OnClick="AQ_LinkButton1_Click" runat="server">爱情鲜花专区 >></asp:LinkButton>
                </div>
                <!--爱情专区内容左侧 end-->
                <!--爱情专区内容右侧 start-->
                <asp:DataList ID="DataList1" CssClass="I-floor-products" RepeatColumns="4" runat="server" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton17" CssClass="I-floor-products-link" runat="server" CommandArgument='<%# Eval("c_id") %>' CommandName="discribe">
                            <span class="I-img-box">
                                <img alt="" src="../Images/img/<%# Eval("c_pic") %>" />
                            </span>
                            <asp:Label ID="Label9" CssClass="I-product-title" runat="server" Text='<%#"爱情 · " + Eval("c_name") %>'></asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label10" CssClass="I-price-num" runat="server" Text='<%# Convert.ToDouble( Eval("c_price")) %>'></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label11" runat="server" Text='<%# Eval("c_sale") %>' ></asp:Label> 件</p>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
                <!--爱情专区内容右侧 end-->
            </div>
            <!--爱情专区内容 end-->
        </div>
        <!--爱情专区模板 end-->

        <!--送长辈专区模板 start-->
        <div class="I-floor ">
            <!--送长辈专区标题 start-->
            <div class="I-hd">
                <asp:LinkButton ID="LinkButton5" CssClass="I-more" OnClick="QT_LinkButton1_Click" runat="server">更多送长辈鲜花 >></asp:LinkButton>
                <h3>
                    <asp:LinkButton ID="LinkButton6" OnClick="QT_LinkButton1_Click" runat="server">送长辈鲜花</asp:LinkButton>
                    <span>赠·父母/恩师/长辈</span>
                </h3>
            </div>
            <!--送长辈专区标题 end-->
            <!--送长辈专区内容 start-->
            <div class="I-bd">
                <!--送长辈专区内容左侧 start-->
                <div class="I-bd-1 I-f2">
                    <div>
                        <asp:LinkButton ID="LinkButton7" OnClick="QT_LinkButton1_Click" runat="server">
                            <img src="../Images/7.jpg"/>
                        </asp:LinkButton>
                    </div>
                    <asp:LinkButton ID="LinkButton8" CssClass="I-banner-link" OnClick="QT_LinkButton1_Click" runat="server">送长辈鲜花专区 >></asp:LinkButton>
                </div>
                <!--送长辈专区内容左侧 end-->
                <!--送长辈专区内容右侧 start-->
                <asp:DataList ID="DataList2" CssClass="I-floor-products" RepeatColumns="4" runat="server" OnItemCommand="DataList2_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton17" CssClass="I-floor-products-link" runat="server" CommandArgument='<%# Eval("c_id") %>' CommandName="discribe">
                            <span class="I-img-box">
                                <img alt="" src="../Images/img/<%# Eval("c_pic") %>" />
                            </span>
                            <asp:Label ID="Label9" CssClass="I-product-title" runat="server" Text='<%#"送长辈 · " + Eval("c_name") %>'></asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label10" CssClass="I-price-num" runat="server" Text='<%# Convert.ToDouble( Eval("c_price")) %>'></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label11" runat="server" Text='<%# Eval("c_sale") %>' ></asp:Label> 件</p>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
                <!--送长辈专区内容右侧 end-->
            </div>
            <!--送长辈专区内容 end-->
        </div>
        <!--送长辈专区模板 end-->

        <!--永生花专区模板 start-->
        <div class="I-floor ">
            <!--永生花专区标题 start-->
            <div class="I-hd">
                <asp:LinkButton ID="LinkButton9" CssClass="I-more" OnClick="YS_LinkButton1_Click" runat="server">更多永生花 >></asp:LinkButton>
                <h3>
                    <asp:LinkButton ID="LinkButton10" OnClick="YS_LinkButton1_Click" runat="server">永生花</asp:LinkButton>
                    <span>许·她一生承诺</span>
                </h3>
            </div>
            <!--永生花专区标题 end-->
            <!--永生花专区内容 start-->
            <div class="I-bd">
                <!--永生花专区内容左侧 start-->
                <div class="I-bd-1 I-f3">
                    <div>
                        <asp:LinkButton ID="LinkButton12" OnClick="YS_LinkButton1_Click" runat="server">
                            <img src="../Images/8.jpg"/>
                        </asp:LinkButton>
                    </div>
                    <asp:LinkButton ID="LinkButton11" CssClass="I-banner-link" OnClick="YS_LinkButton1_Click" runat="server">永生花专区 >></asp:LinkButton>
                </div>
                <!--永生花专区内容左侧 end-->
                <!--永生花专区内容右侧 start-->
                <asp:DataList ID="DataList3" CssClass="I-floor-products" RepeatColumns="4" runat="server" OnItemCommand="DataList3_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton17" CssClass="I-floor-products-link" runat="server" CommandArgument='<%# Eval("c_id") %>' CommandName="discribe">
                            <span class="I-img-box">
                                <img alt="" src="../Images/img/<%# Eval("c_pic") %>" />
                            </span>
                            <asp:Label ID="Label9" CssClass="I-product-title" runat="server" Text='<%#"永生花 · " + Eval("c_name") %>'></asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label10" CssClass="I-price-num" runat="server" Text='<%# Convert.ToDouble( Eval("c_price")) %>'></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label11" runat="server" Text='<%# Eval("c_sale") %>' ></asp:Label> 件</p>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
                <!--永生花专区内容右侧 end-->
            </div>
            <!--永生花专区内容 end-->
        </div>
        <!--永生花专区模板 end-->

        <!--礼品专区模板 start-->
        <div class="I-floor ">
            <!--礼品专区标题 start-->
            <div class="I-hd">
                <asp:LinkButton ID="LinkButton13" CssClass="I-more" OnClick="LP_LinkButton1_Click" runat="server">更多礼品 >></asp:LinkButton>
                <h3>
                    <asp:LinkButton ID="LinkButton14"  OnClick="LP_LinkButton1_Click" runat="server">礼品</asp:LinkButton>
                    <span>给她·最美好的礼物</span>
                </h3>
            </div>
            <!--礼品专区标题 end-->
            <!--礼品专区内容 start-->
            <div class="I-bd">
                <!--礼品专区内容左侧 start-->
                <div class="I-bd-1 I-f4">
                    <div>
                        <asp:LinkButton ID="LinkButton16" OnClick="LP_LinkButton1_Click" runat="server">
                            <img src="../Images/9.jpg"/>
                        </asp:LinkButton>
                    </div>
                    <asp:LinkButton ID="LinkButton15" CssClass="I-banner-link" OnClick="LP_LinkButton1_Click" runat="server">礼品专区 >></asp:LinkButton>
                </div>
                <!--礼品专区内容左侧 end-->
                <!--礼品专区内容右侧 start-->
                <asp:DataList ID="DataList4" CssClass="I-floor-products" RepeatColumns="4" runat="server" OnItemCommand="DataList4_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton17" CssClass="I-floor-products-link" runat="server" CommandArgument='<%# Eval("c_id") %>' CommandName="discribe">
                            <span class="I-img-box">
                                <img alt="" src="../Images/img/<%# Eval("c_pic") %>" />
                            </span>
                            <asp:Label ID="Label9" CssClass="I-product-title" runat="server" Text='<%#"礼品 · " + Eval("c_name") %>'></asp:Label>
                            <p class="I-price">
                                <span class="I-price-sign">￥</span>
                                <asp:Label ID="Label10" CssClass="I-price-num" runat="server" Text='<%# Convert.ToDouble( Eval("c_price")) %>'></asp:Label>
                            </p>
                            <p style="font-size:12px">已售 <asp:Label ID="Label11" runat="server" Text='<%# Eval("c_sale") %>' ></asp:Label> 件</p>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
                <!--礼品专区内容右侧 end-->
            </div>
            <!--礼品专区内容 end-->
        </div>
        <!--礼品专区模板 end-->

        <!--用户评价 start-->
        <div class="I-comments">
            <div class="I-comments-hd">
                <a href="Index.aspx">更多></a>
                <h4>用户评价</h4>
            </div>
            <div class="I-comments-bd">
                <ul class="I-comments-list">
                    <li class="I-comments-item">
                        <div class="I-comments-item-hd">用户名</div>
                        <div class="I-comments-item-bd">留言。。。。。</div>
                    </li>
                    <li class="I-comments-item">
                        <div class="I-comments-item-hd">用户名</div>
                        <div class="I-comments-item-bd">留言。。。。。</div>
                    </li>
                    <li class="I-comments-item">
                        <div class="I-comments-item-hd">用户名</div>
                        <div class="I-comments-item-bd">留言。。。。。</div>
                    </li>
                    <li class="I-comments-item">
                        <div class="I-comments-item-hd">用户名</div>
                        <div class="I-comments-item-bd">留言。。。。。</div>
                    </li>
                    <li class="I-comments-item">
                        <div class="I-comments-item-hd">用户名</div>
                        <div class="I-comments-item-bd">留言。。。。。</div>
                    </li>
                    <li class="I-comments-item">
                        <div class="I-comments-item-hd">用户名</div>
                        <div class="I-comments-item-bd">留言。。。。。</div>
                    </li>
                </ul>
            </div>
        </div>
        <!--用户评价 end-->

    </div>
    <!--主内容区 end-->


</asp:Content>

