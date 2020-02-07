<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddProducts.aspx.cs" Inherits="Back_NewProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title>新品上架</title>

    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/AddProducts.css");
        /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
    </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script type="text/javascript" src="../JS/AddProducts.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <!-- 导航栏 start -->
    <div class="A-navigation ">
        <div class="A-nav">
            <div>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="UserShow.aspx">信息中心</asp:HyperLink>
            </div>
            <div>
                <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#FF6A00">新品上架</asp:HyperLink>
            </div>
            <div>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="ProductsManage.aspx">商品管理</asp:HyperLink>
            </div>
            <div>
                <asp:HyperLink ID="HyperLink50" runat="server"  NavigateUrl="reply.aspx"> 
                留言管理 
                </asp:HyperLink>   
            </div>
        </div>
    </div>
    <!-- 导航栏 end -->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    
    <!-- 主内容区 start -->
    <div class="A-content">
        
        <!-- 左侧内容区 start -->
        <div class="A-con-left">
            <div class="A-con-left-tite"><i class="iconfont">&#xe689;</i>&nbsp;商品信息</div>
            <div class="A-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink5" runat="server">
                        <i class="iconfont">&#xe913;</i> 新品上架
                    </asp:HyperLink>
                </span>
            </div>
            <div class="A-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="ProductsManage.aspx">
                        <i class="iconfont">&#xe613;</i> 商品管理
                    </asp:HyperLink>
                </span>
                <p>
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="ProductsManage.aspx">鲜花系列</asp:HyperLink>
                </p>
                <p>
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="ProductsManage_PreservedFlowe.aspx">永生花</asp:HyperLink>
                </p>
                <p>
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="ProductsManage_Material.aspx">花材</asp:HyperLink>
                </p>
                <p>
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="ProductsManage_Gift.aspx">礼品</asp:HyperLink>
                </p>
            </div>
        </div>
        <!-- 左侧内容区 end -->
        <!-- 右侧内容区 start -->
        <div class="A-con-right">
            <br />
            <asp:Label ID="Label1" runat="server" Text="" CssClass="A-hint"></asp:Label>
            <br />
            <div class="A-con-right-item">
                <span>商品名：</span>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="A-name-box" TextMode="MultiLine" MaxLength="30"></asp:TextBox>
                <div class="A-Msg A-nameMsg1">最多只允许50个字符！！</div>
                <div class="A-Msg A-nameMsg2">不能为空！！</div>
            </div>
            <div class="A-con-right-item">
                <span>花语：</span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="A-flowerLanguage-box" TextMode="MultiLine" MaxLength="50"></asp:TextBox>
                <div class="A-Msg A-LMsg1">最多只允许100个字符！！</div>
                <div class="A-Msg A-LMsg2">不能为空！！</div>
            </div>
            <div class="A-con-right-item">
                <span>分类：</span>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="A-classify-box A-classify1">
                    <asp:ListItem>鲜花</asp:ListItem>
                    <asp:ListItem>永生花</asp:ListItem>
                    <asp:ListItem>礼品</asp:ListItem>
                    <asp:ListItem>鲜花花材</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="A-classify-box A-classify2">
                    <asp:ListItem>爱情系列</asp:ListItem>
                    <asp:ListItem>生日系列</asp:ListItem>
                    <asp:ListItem>婚庆系列</asp:ListItem>
                    <asp:ListItem>生活系列</asp:ListItem>
                    <asp:ListItem>商务系列</asp:ListItem>
                    <asp:ListItem>殡仪系列</asp:ListItem>
                    <asp:ListItem>其它系列</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="A-classify-box A-classify3" style="display: none;">
                    <asp:ListItem>永生瓶花</asp:ListItem>
                    <asp:ListItem>经典花盒</asp:ListItem>
                    <asp:ListItem>巨型玫瑰</asp:ListItem>
                    <asp:ListItem>特色永生花</asp:ListItem>
                    <asp:ListItem>薰衣草</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="A-classify-box A-classify4" style="display: none;">
                    <asp:ListItem>音乐盒</asp:ListItem>
                    <asp:ListItem>金箔花</asp:ListItem>
                    <asp:ListItem>3D水晶内雕</asp:ListItem>
                    <asp:ListItem>首饰/美妆</asp:ListItem>
                    <asp:ListItem>巧克力</asp:ListItem>
                    <asp:ListItem>公仔/睡枕</asp:ListItem>
                    <asp:ListItem>摆件/其他</asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="A-con-right-item">
                <span>花材：</span>
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="A-classify-box A-classify5" style="display: none;">
                    <asp:ListItem>玫瑰</asp:ListItem>
                    <asp:ListItem>康乃馨</asp:ListItem>
                    <asp:ListItem>百合</asp:ListItem>
                    <asp:ListItem>向日葵</asp:ListItem>
                    <asp:ListItem>扶郎</asp:ListItem>
                    <asp:ListItem>郁金香</asp:ListItem>
                    <asp:ListItem>马蹄莲</asp:ListItem>
                    <asp:ListItem>选项内没有，请编辑</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="A-materials-box" TextMode="MultiLine" MaxLength="30"></asp:TextBox>
                <div class="A-Msg A-materialsMsg1">最多只允许100个字符！！</div>
                <div class="A-Msg A-materialsMsg2">不能为空！！</div>
            </div>
            <div class="A-con-right-item">
                <span>包装：</span>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="A-flowerLanguage-box" TextMode="MultiLine" MaxLength="50"></asp:TextBox>
                <div class="A-Msg A-packMsg1">最多只允许50个字符！！</div>
                <div class="A-Msg A-packMsg2">不能为空！！</div>
            </div>
            <div class="A-con-right-item">
                <span>介绍：</span>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="A-presentation-box" TextMode="MultiLine" MaxLength="200"></asp:TextBox>
                <div class="A-Msg A-presentationMsg1">最多只允许200个字符！！</div>
                <div class="A-Msg A-presentationMsg2">不能为空！！</div>
            </div>
            <div class="A-con-right-item">
                <span>展示图片：</span>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="A-fileUpload" OnChange="javascript: preImg(this, 'ContentPlaceHolder3_Image1');"/>
                <asp:Image ID="Image1" runat="server" CssClass="A-showImg1" AlternateText="尚未上传图片" />
                <div class="A-Msg A-imgMsg1">请上传展示图片！！</div>
            </div>
            <div class="A-con-right-item">
                <span>详情图：</span>
                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="A-fileUpload" OnChange="javascript: preImg(this, 'ContentPlaceHolder3_Image2');"/>
                <asp:Image ID="Image2" runat="server" CssClass="A-showImg2" AlternateText="尚未上传图片" />
            </div>
            <div class="A-con-right-item">
                <span>单价：</span>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="A-price-box" TextMode="MultiLine" MaxLength="30"></asp:TextBox>
                <b>&nbsp;￥</b>
                <div class="A-Msg A-priceMsg1">请输入正确的正数或小数！！</div>
                <div class="A-Msg A-priceMsg2">不能为空！！</div>
            </div>
            <div class="A-con-right-item">
                <span>数量：</span>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="A-price-box" TextMode="MultiLine" MaxLength="30"></asp:TextBox>
                <div class="A-Msg A-numMsg1">请输入正确的正整数！！</div>
                <div class="A-Msg A-numMsg2">不能为空！！</div>
            </div>
            <div class="A-con-right-item">
                <asp:Button ID="Button1" runat="server" Text=" 添 加 " CssClass="A-but" BorderStyle="None" OnClick="Button1_Click" OnClientClick="javascript:return ButClick()" />
            </div>
            <br />
            <br />
            <br />
            <br />
        </div>
        <!-- 左侧内容区 end -->

    </div>
    <!-- 内容区 end -->


</asp:Content>

