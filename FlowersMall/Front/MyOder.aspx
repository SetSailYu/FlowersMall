<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyOder.aspx.cs" Inherits="Front_MyOder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title>我的订单</title>

    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/ShoppingCart.css");
        @import url("../Style/DetailsFlower.css");
        @import url("../Style/MyOder.css");
        /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
    </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script type="text/javascript" src="../JS/MyOder.js"></script>
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
                        <asp:HyperLink ID="HyperLink6" NavigateUrl="~/Front/U_personall.aspx" runat="server">个人用户中心</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink7" NavigateUrl="~/Front/ShoppingCart.aspx" runat="server">购物车</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink5" NavigateUrl="~/Front/MyOder.aspx" ForeColor="#FF6A00" runat="server">我的订单</asp:HyperLink>
                    </li>
                </ul>
                
            </div>
            <!-- 导航栏 end -->

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <div class="S-MainCont">

        <!-- 筛选 start-->
        <div class="MO-filterbar">
            <ul class="MO-filter-items">
                <li>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="MO-classify-box"  AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>全部</asp:ListItem>
                        <asp:ListItem>已付款</asp:ListItem>
                        <asp:ListItem>未支付</asp:ListItem>
                    </asp:DropDownList>
                </li>
            </ul>
            <div class="Mo-sou">
                <asp:TextBox ID="TextBox1" CssClass="MO-sousuo" runat="server"  Placeholder="订单编号" BorderStyle="None"></asp:TextBox>
                <div class="MO-soubut">
                    <asp:LinkButton ID="LinkButton1" OnClientClick="javascript:return SousuoOder()" OnClick="LinkButton1_Click" runat="server">
                    <i class="iconfont">&#xe60f;</i>
                    查询
                    </asp:LinkButton>
                </div>
            </div>
        </div>
        <!-- 筛选 end-->

        <div class="MO-hint">
            <div>
                <i class="iconfont">&#xe614;</i>
            </div>
        </div>

        <asp:DataList ID="DataList2" CssClass="MO-DataList2" runat="server" >
            <ItemTemplate>

                <div class="S-Cart">

                    <div class="S-title">
                        <h3 class="MO-tit">订单编号：<asp:Label ID="Label1" CssClass="MO-o_id" runat="server" Text='<%# Eval("o_id") %>'></asp:Label></h3>
                        <asp:Label ID="Label10" CssClass="MO-time" runat="server" Text='<%# Eval("o_date") %>'></asp:Label>
                    </div>

                    <asp:DataList ID="DataList1" runat="server" DataSource='<%# GetDetails(Eval("o_id").ToString()) %>'>
                        <ItemTemplate>
                            <div class="MO-order-list">
                                <div class="dst_img">
                                    <img src="../Images/img/<%# Eval("c_pic") %>" />
                                </div>
                                <div class="dst_txt">
                                    <div>
                                        <h3>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
                                        </h3>
                                    </div>
                                    <div>
                                        <p class="MO-piroe">
                                            ￥ <asp:Label ID="Label7" runat="server" Text='<%# Convert.ToDouble(Eval("c_price")) %>'></asp:Label>
                                        </p>
                                        <p class="MO-num">
                                            数量： <asp:Label ID="Label2" runat="server" Text='<%# Eval("o_s_num") %>'></asp:Label>
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>

                    <div class="MO-bottom">
                        <p>
                            收货人：<asp:Label ID="Label3" runat="server" Text='<%# Eval("o_a_name") %>'></asp:Label>
                        </p>
                        <p>
                            收货手机号：<asp:Label ID="Label4" runat="server" Text='<%# Eval("o_a_iphone") %>'></asp:Label>
                        </p>
                        <p>
                            收货地址：<asp:Label ID="Label5" runat="server" Text='<%# Eval("o_a_address") %>'></asp:Label>
                        </p>
                        <p>
                            邮编：<asp:Label ID="Label6" runat="server" Text='<%# Eval("o_a_postcode") %>'></asp:Label>
                        </p>
                        <p>
                            配送方式：<asp:Label ID="Label9" runat="server" Text='<%# Eval("o_delivery") %>'></asp:Label>
                        </p>
                        <p>
                            留言：<asp:Label ID="Label13" runat="server" Text='<%# Eval("o_message") %>'></asp:Label>
                        </p>
                        <p class="MO-buy MO-buy-price">
                            总金额：<asp:Label ID="Label11" runat="server" Text='<%# " ￥ " + BuyPrice(Eval("o_id").ToString()) %>'></asp:Label>
                        </p>
                        <p class="MO-buy">
                            订单状态：<asp:Label ID="Label8" runat="server" Text='<%# OrderState( Convert.ToBoolean( Eval("o_flag"))) %>'></asp:Label>
                        </p>
                        <p class="MO-buy">
                            <asp:Panel ID="Panel1" runat="server" Visible='<%# ShowDiv(Convert.ToBoolean( Eval("o_flag"))) %>'>
                                <div class="O-pay">
                                    <div class="mobile-text">
                                        <div class="outer">
                                            <div class="filter-box"></div>
                                            <div class="inner">&gt;&gt;</div>
                                            <%--<i class="iconfont iconhuakuai inner"></i>--%>
                                            <span>→向右滑动，实现支付→
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                
                            </asp:Panel>
                        </p>
                        <br />
                    </div>

                </div>

            </ItemTemplate>
        </asp:DataList>

        

    </div>

</asp:Content>

