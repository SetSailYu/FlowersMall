<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reply.aspx.cs" Inherits="Back_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>游客留言</title>
    <style type="text/css">
        
        @import url("../Style/MasterPage.css");
        @import url("../Style/AddProducts.css");
        @import url('../Style/Reply.css');
        @import url("../Style/iconFont/iconfont.css");  
        .auto-style1 {
            margin-right: 478px;
        }
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
                <asp:HyperLink runat="server"  NavigateUrl="Reply.aspx" ForeColor="#FF6A00"> 
                留言管理 
                </asp:HyperLink>   
            </div>
        </div>
    </div>
<!-- 导航栏 end -->

<!--  内容 start-->
  <%--  <div id="content">--%>
<%--<!--  内容--左边导航栏 start-->
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
<!--  内容--左边导航栏 end-->--%>
<!-- 左侧内容区 start -->
<%--<div class="A-con-left" style="float: left;">
    <div class="A-con-left-tite"><i class="iconfont">&#xe689;</i>&nbsp;信息中心</div>
    <div class="A-con-left-item">
        <span>
            <asp:HyperLink ID="HyperLink5" runat="server">
                <i class="iconfont">&#xe913;</i> 管理员信息
            </asp:HyperLink>
        </span>
        <p>
            <asp:HyperLink ID="HyperLink11" runat="server" >添加管理员</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink12" runat="server" >管理员管理</asp:HyperLink>
        </p>
    </div>
    <div class="A-con-left-item">
        <span>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="ProductsManage.aspx">
                <i class="iconfont">&#xe641;</i> 会员信息
            </asp:HyperLink>
        </span>
        <p>
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="ProductsManage.aspx">添加会员</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="ProductsManage_PreservedFlowe.aspx">会员管理</asp:HyperLink>
        </p>
    </div>
    <div class="A-con-left-item">
        <span>
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="ProductsManage.aspx">
                <i class="iconfont">&#xe689;</i> 帮助中心
            </asp:HyperLink>
        </span>
        <p>
            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="ProductsManage.aspx">常见问题</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="ProductsManage_PreservedFlowe.aspx">游客留言</asp:HyperLink>
        </p>
    </div>
</div>--%>
<!-- 左侧内容区 end -->
    
<!--  内容--主体 start-->

    <%--      <div id="content_mid">
              <div id="content_mid_tile">
                  <h3 id="content_mid_h3">
                        <b>FAQ</b>
                        <br />
                        游客提问
                    </h3>
                </div>
                <div id="content_mid_content">
             <%--     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                        ConnectionString="<%$ ConnectionStrings:Flower_ShopConnectionString %>"
                        DeleteCommand="DELETE FROM [lvmessage] WHERE [u_name] = @original_u_name AND [u_information] = @original_u_information AND [u_time] = @original_u_time AND (([u_suler] = @original_u_suler) OR ([u_suler] IS NULL AND @original_u_suler IS NULL))" 
                        InsertCommand="INSERT INTO [lvmessage] ([u_name], [u_information], [u_time], [u_suler]) VALUES (@u_name, @u_information, @u_time, @u_suler)" 
                        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [lvmessage]"
                        UpdateCommand="UPDATE [lvmessage] SET [u_information] = @u_information, [u_time] = @u_time, [u_suler] = @u_suler WHERE [u_name] = @original_u_name AND [u_information] = @original_u_information AND [u_time] = @original_u_time AND (([u_suler] = @original_u_suler) OR ([u_suler] IS NULL AND @original_u_suler IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_u_name" Type="String" />
                            <asp:Parameter Name="original_u_information" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_u_time" />
                            <asp:Parameter Name="original_u_suler" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="u_name" Type="String" />
                            <asp:Parameter Name="u_information" Type="String" />
                            <asp:Parameter DbType="Date" Name="u_time" />
                            <asp:Parameter Name="u_suler" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="u_information" Type="String" />
                            <asp:Parameter DbType="Date" Name="u_time" />
                            <asp:Parameter Name="u_suler" Type="String" />
                            <asp:Parameter Name="original_u_name" Type="String" />
                            <asp:Parameter Name="original_u_information" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_u_time" />
                            <asp:Parameter Name="original_u_suler" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                   <asp:DataList ID="DataList1" runat="server" DataKeyField="u_name" DataSourceID="SqlDataSource1" CssClass="auto-style1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                         <div class="content_mid_content_leave">
                            <asp:Label ID="name"  runat="server" Text='<%# Eval("u_name") %>' /> 
                            <asp:Label ID="Label2" CssClass="content_mid_content_leave_label2" runat="server" Text='<%# Eval("u_time") %>' />
                            <br />

                            <h3 class="content_mid_content_leave_h3"><%# Eval("u_information") %></h3>
                            <div class="content_mid_content_leave_div">
                                <asp:TextBox runat="server" ID="text" class="content_mid_content_leave_div_text" Text='<%# Eval("u_suler") %>'></asp:TextBox>
                                 <asp:Button runat="server"  Text="回复" CommandName="huifu" CommandArgument='<%# Eval("u_name") %>' />
                                
                            </div>
                  </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>

            </div>--%>
<!--  内容--主体 end-->

   <%--  </div>--%>
<!--  内容 end-->



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
                    <asp:HyperLink ID="HyperLink3"  NavigateUrl="reply.aspx" ForeColor="#FF6A00" runat="server" >游客留言</asp:HyperLink>
                </p>
                <p>
                    <asp:HyperLink ID="HyperLink4"    runat="server" NavigateUrl="Leave.aspx" >管理员回复</asp:HyperLink>
                </p>
            </div>
           </div>
          <!-- 左侧内容区 end -->


        <div id="content_mid">
       <div id="content_mid_tile">
                  <h3 id="content_mid_h3">
                        <b>FAQ</b>
                        <br />
                        游客提问
                    </h3>
                </div>
                <div id="content_mid_content">
<%--                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                        ConnectionString="<%$ ConnectionStrings:Flower_ShopConnectionString %>"
                        DeleteCommand="DELETE FROM [lvmessage] WHERE [u_name] = @original_u_name AND [u_information] = @original_u_information AND [u_time] = @original_u_time AND (([u_suler] = @original_u_suler) OR ([u_suler] IS NULL AND @original_u_suler IS NULL))" 
                        InsertCommand="INSERT INTO [lvmessage] ([u_name], [u_information], [u_time], [u_suler]) VALUES (@u_name, @u_information, @u_time, @u_suler)" 
                        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [lvmessage]"
                        UpdateCommand="UPDATE [lvmessage] SET [u_information] = @u_information, [u_time] = @u_time, [u_suler] = @u_suler WHERE [u_name] = @original_u_name AND [u_information] = @original_u_information AND [u_time] = @original_u_time AND (([u_suler] = @original_u_suler) OR ([u_suler] IS NULL AND @original_u_suler IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_u_name" Type="String" />
                            <asp:Parameter Name="original_u_information" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_u_time" />
                            <asp:Parameter Name="original_u_suler" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="u_name" Type="String" />
                            <asp:Parameter Name="u_information" Type="String" />
                            <asp:Parameter DbType="Date" Name="u_time" />
                            <asp:Parameter Name="u_suler" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="u_information" Type="String" />
                            <asp:Parameter DbType="Date" Name="u_time" />
                            <asp:Parameter Name="u_suler" Type="String" />
                            <asp:Parameter Name="original_u_name" Type="String" />
                            <asp:Parameter Name="original_u_information" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_u_time" />
                            <asp:Parameter Name="original_u_suler" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                   <asp:DataList ID="DataList1" runat="server" DataKeyField="u_name" DataSourceID="SqlDataSource1" CssClass="auto-style1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                         <div class="content_mid_content_leave">
                            <asp:Label ID="name"  runat="server" Text='<%# Eval("u_name") %>' /> 
                            <asp:Label ID="Label2" CssClass="content_mid_content_leave_label2" runat="server" Text='<%# Eval("u_time") %>' />
                            <br />

                            <h3 class="content_mid_content_leave_h3"><%# Eval("u_information") %></h3>
                            <div class="content_mid_content_leave_div">
                                <asp:TextBox runat="server" ID="text" class="content_mid_content_leave_div_text" Text='<%# Eval("u_suler") %>'></asp:TextBox>
                                 <asp:Button runat="server"  Text="回复" CommandName="huifu" CommandArgument='<%# Eval("u_name") %>' />
                                
                            </div>
                  </div>
                        </ItemTemplate>
                    </asp:DataList>--%>

        </div>
    </div>
    </div>
</asp:Content>

