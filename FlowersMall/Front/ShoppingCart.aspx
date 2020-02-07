<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Front_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>购物车</title>

    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/ShoppingCart.css");
        @import url("../Style/DetailsFlower.css");
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
                            <asp:LinkButton ID="LinkButton1" OnClick="XH_LinkButton1_Click" runat="server">鲜花系列</asp:LinkButton>
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
                        <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Front/Index.aspx" runat="server">首页</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink6" NavigateUrl="~/Front/U_personall.aspx" runat="server">个人用户中心</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink7" NavigateUrl="~/Front/ShoppingCart.aspx" ForeColor="#FF6A00" runat="server">购物车</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink5" NavigateUrl="~/Front/MyOder.aspx" runat="server">我的订单</asp:HyperLink>
                    </li>
                </ul>
                
            </div>
            <!-- 导航栏 end -->
       

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <div class="S-MainCont">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <%-- AJAX控件1实现局部刷新（异步回送） --%>
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
            <ContentTemplate>

                <div class="S-Cart">

                    <div class="S-title">
                        <span class="S-title-1">商品名称</span>
                        <span class="S-title-2">订购价</span>
                        <span class="S-title-3">数量</span>
                        <span class="S-title-4">操作</span>
                    </div>

                    <div class="MO-hint">
                        <div>
                            <i class="iconfont">&#xe610;</i>
                        </div>
                    </div>

                    <asp:DataList ID="DataList1" CssClass="MO-DataList2" runat="server" OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" OnDeleteCommand="DataList1_DeleteCommand">
                        <ItemTemplate>
                            <div class="S-order-list">
                                <div class="S-selecter">
                                    <asp:CheckBox ID="s_buy" runat="server"  Checked='<%#Eval("s_buy")%> ' AutoPostBack="True" OnCheckedChanged="S_buy_CheckedChanged" />
                                </div>
                                <div class="S-img-box">
                                    <img src="../Images/img/<%# Eval("s_pic") %>" />
                                </div>
                                <div class="S-product">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("s_c_name") %>'></asp:Label>
                                </div>
                                <div class="S-order-price">
                                    <span class="S-price-sign ">￥</span>
                                    <asp:Label ID="Label3" CssClass="S-price-num " runat="server" Text='<%# Convert.ToDouble( Eval("s_price")) %>'></asp:Label>
                                </div>
                                <div class="S-num">
                                    <asp:Label runat="server" CssClass="S-form-control"  Text='<%# Eval("s_num") %>'></asp:Label>
                                </div>
                                <div class="S-operate">
                                    <asp:LinkButton ID="lk1" runat="server" style="margin-right: 10px;margin-left:10px; " CommandArgument='<%# Eval("s_c_id") %>'  CommandName="edit">编辑</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server"  CommandArgument='<%# Eval("s_c_id") %>'  CommandName="delete" OnClientClick="javascript:return confirm('是否删除？')">删除</asp:LinkButton>
                                </div>
                            </div>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <div class="S-order-list">
                                <div class="S-selecter">
                                    <asp:CheckBox ID="s_buy" runat="server"  Checked='<%#Eval("s_buy")%> ' AutoPostBack="True" OnCheckedChanged="S_buy_CheckedChanged" />
                                </div>
                                <div class="S-img-box">
                                    <img src="../Images/img/<%# Eval("s_pic") %>" />
                                </div>
                                <div class="S-product">
                                    <asp:Label ID="Label4" runat="server" Text='<%# "[" + Eval("c_kind") + "] · " %>'></asp:Label>
                                    <asp:Label ID="Label5" runat="server" Text='<%# "[" + Eval("c_series") + "] · " %>'></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("s_c_name") %>'></asp:Label>
                                </div>
                                <div class="S-order-price">
                                    <span class="S-price-sign ">￥</span>
                                    <asp:Label ID="Label3" CssClass="S-price-num " runat="server" Text='<%# Convert.ToDouble( Eval("s_price")) %>'></asp:Label>
                                </div>
                                <div class="S-num">
                                    <asp:TextBox  ID="txt_num" CssClass="S-form-control"  runat="server" Text='<%# Eval("s_num") %>'></asp:TextBox>
                                </div>
                                <div class="S-operate">
                                    <asp:LinkButton ID="LinkButton3" runat="server" style="margin-right: 10px; margin-left:10px;"   CommandArgument='<%# Eval("s_c_id") %>' CommandName="update">更新</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton4" runat="server"  CommandArgument='<%# Eval("s_c_id") %>' CommandName="cancel">取消</asp:LinkButton>
                                </div>
                            </div>
                        </EditItemTemplate>
                    </asp:DataList>

                </div>

                <div class="S-contbottom">
                    <div class="S-set-info">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Front/Index.aspx" CssClass="S-back" runat="server">
                <i></i>
                继续挑选
                        </asp:HyperLink>
                        <div class="S-set-stat">
                            应付金额:
                <div class="S-price">
                    <span class="S-price-sign">￥</span>
                    <asp:Label ID="Label1" CssClass="S-price-num" runat="server" Text="Label"></asp:Label>
                </div>
                        </div>
                    </div>
                    <asp:HyperLink ID="HyperLink2" CssClass="S-btn" NavigateUrl="~/Front/Oder.aspx" runat="server">去结算</asp:HyperLink>
                    <%--<asp:Button ID="Button1" CssClass="S-btn"  runat="server" Text="去结算" BorderStyle="None" />--%>
                </div>

            </ContentTemplate>
        </asp:UpdatePanel>

    </div>

</asp:Content>

