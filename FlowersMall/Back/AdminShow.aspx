<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminShow.aspx.cs" Inherits="Back_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title>管理员管理</title>
    
    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/AddProducts.css");
        @import url("../Style/Back.css");
        /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
    </style>
     <style type="text/css">
         
        #M-bottom
        {
            height:500px;
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
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#FF6A00">信息中心</asp:HyperLink>
            </div>
            <div>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="AddProducts.aspx">新品上架</asp:HyperLink>
            </div>
            <div>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="ProductsManage.aspx" >商品管理</asp:HyperLink>
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

    <div id="A-content" style="width:1200px;margin: 0 auto; ">
     
    <!-- 左侧内容区 start -->
        <div class="A-con-left" style="float: left;">
            <div class="A-con-left-tite"><i class="iconfont">&#xe689;</i>&nbsp;信息中心</div>
            <div class="A-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink5" runat="server">
                        <i class="iconfont">&#xe913;</i> 管理员信息
                    </asp:HyperLink>
                </span>

                <p>
                    <asp:HyperLink ID="HyperLink12" ForeColor="#FF6A00" runat="server" >管理员管理</asp:HyperLink>
                </p>
            </div>
            <div class="A-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="UserShow.aspx">
                        <i class="iconfont">&#xe641;</i> 会员信息
                    </asp:HyperLink>
                </span>
                <p>
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="UserShow.aspx">会员管理</asp:HyperLink>
                </p>
            </div>
            <div class="A-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="reply.aspx">
                        <i class="iconfont">&#xe689;</i> 留言管理
                    </asp:HyperLink>
                </span>
                <p>
                    <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="reply.aspx">游客留言</asp:HyperLink>
                </p>
                <p>
                    <asp:HyperLink ID="HyperLink7"    runat="server" NavigateUrl="Leave.aspx" >管理员回复</asp:HyperLink>
                </p>
            </div>
        </div>
        <!-- 左侧内容区 end -->
    
    <!--  内容--主体 strart-->
     <div id="A-con-right">
         <p>  管理员信息:</p>
        <div id="mid_content_GV">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:Flower_ShopConnectionString %>"
                OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Admin_Table]">
                </asp:SqlDataSource>

                 <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="A_id" ForeColor="#333333" GridLines="None" Height="292px" Width="621px">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="A_id" HeaderText="A_id" ReadOnly="True" SortExpression="A_id" />
                         <asp:BoundField DataField="A_password" HeaderText="A_password" SortExpression="A_password" />
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     </Columns>
                     <EditRowStyle BackColor="#7C6F57" />
                     <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#E3EAEB" />
                     <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#F8FAFA" />
                     <SortedAscendingHeaderStyle BackColor="#246B61" />
                     <SortedDescendingCellStyle BackColor="#D4DFE1" />
                     <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
         </div>
    </div>
    <!--  内容--主体 end-->
</div>




</asp:Content>

