﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="huayu.aspx.cs" Inherits="Back_huayu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>花语大全</title>
        <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/huayu.css");
        @import url("../Style/DetailsFlower.css");
        /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");

   </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script type="text/javascript" src="../JS/MasterPage.js"></script>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">

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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

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
                            <asp:LinkButton ID="LinkButton1" OnClick="XH_LinkButton1_Click" runat="server">鲜花系列</asp:LinkButton>
                        </h4>
                        <ul>
                            <li>
                                <asp:LinkButton ID="LinkButton4" OnClick="AQ_LinkButton1_Click" runat="server">爱情系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton3" OnClick="SR_LinkButton1_Click" runat="server">生日系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton5" OnClick="HQ_LinkButton1_Click" runat="server">婚庆系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton6" OnClick="SH_LinkButton1_Click" runat="server">生活系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton7" OnClick="SW_LinkButton1_Click" runat="server">商务系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton8" OnClick="BY_LinkButton1_Click" runat="server">殡仪系列</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton9" OnClick="QT_LinkButton1_Click" runat="server">其它系列</asp:LinkButton>
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
                        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Front/Index.aspx" runat="server">首页</asp:HyperLink>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton2" OnClick="XH_LinkButton1_Click" runat="server">鲜花套餐</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton10" OnClick="YS_LinkButton1_Click" runat="server">永生花</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton11" OnClick="XH_LinkButton1_Click" runat="server">花材</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton12" OnClick="LP_LinkButton1_Click" runat="server">礼品</asp:LinkButton>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink5" NavigateUrl="~/Front/huayu.aspx" ForeColor="#FF6A00" runat="server">花语大全</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Front/U_levaeMessage.aspx" runat="server">留言</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink4" NavigateUrl="~/Front/FAQ.aspx" runat="server" >帮助中心</asp:HyperLink>
                    </li>
                </ul>
                
            </div>
            <!-- 导航栏 end -->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div id="content">
        <div id="content_mid">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Flower_ShopConnectionString %>" SelectCommand="SELECT [c_name], [c_flower_language], [c_flower_material], [c_series], [c_pic], [c_introduce] FROM [Commodity_Table]"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server"  RepeatColumns="2">
                <ItemTemplate>
                    <div class="div">
                        <img   class="content_mid_img"  src="../Images/img/<%# Eval("c_pic") %>"/>
                        <br />
                         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <asp:Label CssClass="c_nameLabel" ID="c_nameLabel" runat="server" Text='<%# Eval("c_name") %>' />
                        <br />
                        <br />
                       
                        <asp:Label CssClass="label" ID="c_introduceLabel" runat="server" Text='<%# Eval("c_introduce") %>' />
                        <br />
                        <br />
                        <br />
              
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <asp:Label ID="c_seriesLabel" CssClass="c_seriesLabel" runat="server" Text='<%# Eval("c_series") %>' />
                        <br />
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>

