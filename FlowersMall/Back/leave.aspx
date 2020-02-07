<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Leave.aspx.cs" Inherits="Back_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>管理员回复</title>
    <style type="text/css">
        
        @import url("../Style/MasterPage.css");
        @import url("../Style/AddProducts.css");
        @import url('../Style/Reply.css');
        @import url("../Style/iconFont/iconfont.css");  
        .auto-style1 {
            margin-right: 478px;
        }
    </style>
    <style type="text/css">
        
        @import url("../Style/Leave.css");

   </style>
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
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="AdminShow.aspx" >信息中心</asp:HyperLink>
            </div>
            <div>
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="AddProducts.aspx" >新品上架</asp:HyperLink>
            </div>
            <div>
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="ProductsManage.aspx"  >商品管理</asp:HyperLink>
            </div>
            <div>
                <asp:HyperLink runat="server"  NavigateUrl="reply.aspx" ForeColor="#FF6A00"> 
                留言管理 
                </asp:HyperLink>   
            </div>
        </div>
    </div>
<!-- 导航栏 end -->
    

<%--<!--  内容 start-->
    <div id="content">
<!--  内容--左边导航栏 start-->
        <div id="content_left">
            <a id="left_a"><span class="iconfont">&#xe625</span>帮助中心</a>
                <div id="div_li">
                    <ul  >
                        <li><span class="iconfont">&#xe600</span><span class="left_span">常见问题</span></li>
                        <li class="ul_li"><a>常见问题</a></li>
                        <li class="ul_li"><a>游客留言</a></li>
                    </ul>
                    <hr />
                    <ul>
                        <li><span class="iconfont">&#xe641;</span><span class="left_span">服务中心</span></li>
                        <li class="ul_li"><a>服务声明</a></li>
                        <li class="ul_li"><a>购物流程</a></li>
                        <li class="ul_li"><a>隐私条款</a></li>
                    </ul>
                    <hr />
                 </div>
          </div>
<!--  内容--左边导航栏 end-->

<!--  内容--主体 start-->

          <div id="content_mid">
              <div id="content_mid_tile">
                  <h3 id="content_mid_h3">
                        <b>FAQ</b>
                        <br />
                        提问回复
                    </h3>
                </div>
                <div id="content_mid_content">
                    <div id ="content_mid_content_leave" class="content_mid_content_leave">
                        <div class="content_mid_content_leave_h3">
                            <asp:Label runat="server">提问</asp:Label>
                            <asp:Label runat="server">提问</asp:Label>
                            <asp:Label class="content_mid_content_leave_right" runat="server">提问</asp:Label>
                        </div>
                        <div class="content_mid_content_leave_div">
                            <asp:TextBox runat="server" ID="sss"  class="content_mid_content_leave_div_text" AutoPostBack="True" Height="78px" Width="633px"></asp:TextBox>
                            <button runat="server" class="content_mid_content_leave_div_btn" >回复</button>
                        </div>
                </div>

                </div>
            </div>
<!--  内容--主体 end-->
<!--  内容--留言 strart-->
            <div id="content_leave">
                
                <div id="content_leave_option">
                   <asp:Button runat="server" id="Button1"  class="iconfont"  ToolTip="粗体"  Text="&#xe684;"/>
                   <asp:Button runat="server" id="font_italic"  class="iconfont" ToolTip="斜体"  Text="&#xe61e;"/>
                   <asp:Button runat="server" id="font_underline"  class="iconfont" ToolTip="下划线"  Text="&#xe611;"/>
                   <asp:Button runat="server" id="font_strikethrough" class="iconfont"  ToolTip="删除线"  Text="&#xe60b;"/>
                </div>
                <asp:TextBox  CssClass="content_leave_text" runat="server" ToolTip="提问请自觉遵守相关法律法规！">
                </asp:TextBox>
                <asp:Button  CssClass="content_leave_btn"  runat="server" Text="发布留言"/>
            </div>
<!--  内容--留言 end-->
     </div>
<!--  内容 end-->--%>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <div id="A-content" style="width:1200px;margin: 0 auto; height:1200PX ">
        <!-- 左侧内容区 start -->
        <div class="A-con-left" style="float: left;">
         <div class="A-con-left-tite"><i class="iconfont">&#xe689;</i>&nbsp;留言管理</div>
            <div class="A-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink1" runat="server">
                        <i class="iconfont">&#xe913;</i> 留言管理
                    </asp:HyperLink>
                </span>
                <p>
                    <asp:HyperLink ID="HyperLink3"  NavigateUrl="reply.aspx" runat="server" >游客留言</asp:HyperLink>
                </p>
                <p>
                    <asp:HyperLink ID="HyperLink4"   ForeColor="#FF6A00" runat="server" >管理员回复</asp:HyperLink>
                </p>
            </div>
           </div>
          <!-- 左侧内容区 end -->

        <!--  内容--主体 start-->

          <div id="content_mid">
              <div id="content_mid_tile">
                  <h3 id="content_mid_h3">
                        <b>FAQ</b>
                        <br />
                        提问回复
                    </h3>
                </div>
                <div id="content_mid_content">
                    <div id ="content_mid_content_leave" class="content_mid_content_leave">
                        <div class="content_mid_content_leave_h3">
                            <asp:Label runat="server">提问</asp:Label>
                            <asp:Label runat="server">提问</asp:Label>
                            <asp:Label class="content_mid_content_leave_right" runat="server">提问</asp:Label>
                        </div>
                        <div class="content_mid_content_leave_div">
                            <asp:TextBox runat="server" ID="TextBox1"  class="content_mid_content_leave_div_text" AutoPostBack="True" Height="78px" Width="633px"></asp:TextBox>
                            <button runat="server" class="content_mid_content_leave_div_btn" >回复</button>
                        </div>
                </div>

                </div>
            </div>
<!--  内容--主体 end-->
<!--  内容--留言 strart-->
            <div id="content_leave">
                
                <div id="content_leave_option">
                   <asp:Button runat="server" id="Button2"  class="iconfont"  ToolTip="粗体"  Text="&#xe684;"/>
                   <asp:Button runat="server" id="Button3"  class="iconfont" ToolTip="斜体"  Text="&#xe61e;"/>
                   <asp:Button runat="server" id="Button4"  class="iconfont" ToolTip="下划线"  Text="&#xe611;"/>
                   <asp:Button runat="server" id="Button5" class="iconfont"  ToolTip="删除线"  Text="&#xe60b;"/>
                </div>
                <asp:TextBox  CssClass="content_leave_text" runat="server" ToolTip="提问请自觉遵守相关法律法规！">
                </asp:TextBox>
                <asp:Button  CssClass="content_leave_btn"  runat="server" Text="发布留言"/>
            </div>
<!--  内容--留言 end-->


    </div>

</asp:Content>

