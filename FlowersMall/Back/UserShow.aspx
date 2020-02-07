<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserShow.aspx.cs" Inherits="Back_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <title>用户管理</title>
    
    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/AddProducts.css");
        @import url("../Style/Back.css");
        /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");

        #M-bottom
        {
            height:500px;
        }
        #content_mid {
            position: absolute;
            float: left;
            width: 65%;
            left: 30%;
            height: 500px;
            border: 1px solid gray;
            overflow: hidden;
    /*溢出部分切除*/
}
         .auto-style1 {
             left: 25px;
             top: 15%;
             width: 606px;
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
                <asp:HyperLink runat="server"  NavigateUrl="reply.aspx"> 
                留言管理
                </asp:HyperLink>   
            </div>
        </div>
    </div>
 <!-- 导航栏 end -->
   


   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   <div id="A-content" style="width:1200px;margin: 0 auto; height:540px ">

    <!-- 左侧内容区 start -->
        <div class="A-con-left" style="float: left;">
            <div class="A-con-left-tite"><i class="iconfont">&#xe689;</i>&nbsp;信息中心</div>
            <div class="A-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink5" NavigateUrl="AdminShow.aspx" runat="server">
                        <i class="iconfont">&#xe913;</i> 管理员信息
                    </asp:HyperLink>
                </span>

                <p>
                    <asp:HyperLink ID="HyperLink12" runat="server"  NavigateUrl="AdminShow.aspx">管理员管理</asp:HyperLink>
                </p>
            </div>
            <div class="A-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="ProductsManage.aspx">
                        <i class="iconfont">&#xe641;</i> 会员信息
                    </asp:HyperLink>
                </span>
                <p>
                    <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="#FF6A00" NavigateUrl="UserShow.aspx">会员管理</asp:HyperLink>
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
     <div id="content_mid">
       
                <p>  会员信息:</p>
    
        <div id="mid_content_GV" class="auto-style1">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:Flower_ShopConnectionString %>" 
                    DeleteCommand="DELETE FROM [User_Table] WHERE [u_id] = @original_u_id AND [u_name] = @original_u_name AND [u_password] = @original_u_password AND (([u_iphone] = @original_u_iphone) OR ([u_iphone] IS NULL AND @original_u_iphone IS NULL)) AND (([u_mail] = @original_u_mail) OR ([u_mail] IS NULL AND @original_u_mail IS NULL)) AND (([u_card] = @original_u_card) OR ([u_card] IS NULL AND @original_u_card IS NULL))"
                    InsertCommand="INSERT INTO [User_Table] ([u_name], [u_password], [u_iphone], [u_mail], [u_card]) VALUES (@u_name, @u_password, @u_iphone, @u_mail, @u_card)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [User_Table]"
                    UpdateCommand="UPDATE [User_Table] SET  [u_password] = @u_password, [u_iphone] = @u_iphone, [u_mail] = @u_mail, [u_card] = @u_card WHERE [u_id] = @original_u_id AND [u_name] = @original_u_name AND [u_password] = @original_u_password AND (([u_iphone] = @original_u_iphone) OR ([u_iphone] IS NULL AND @original_u_iphone IS NULL)) AND (([u_mail] = @original_u_mail) OR ([u_mail] IS NULL AND @original_u_mail IS NULL)) AND (([u_card] = @original_u_card) OR ([u_card] IS NULL AND @original_u_card IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_u_id" Type="Int32" />
                        <asp:Parameter Name="original_u_name" Type="String"  />
                        <asp:Parameter Name="original_u_password" Type="String" />
                        <asp:Parameter Name="original_u_iphone" Type="String" />
                        <asp:Parameter Name="original_u_mail" Type="String" />
                        <asp:Parameter Name="original_u_card" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="u_name" Type="String" />
                        <asp:Parameter Name="u_password" Type="String" />
                        <asp:Parameter Name="u_iphone" Type="String" />
                        <asp:Parameter Name="u_mail" Type="String" />
                        <asp:Parameter Name="u_card" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="u_name" Type="String" />
                        <asp:Parameter Name="u_password" Type="String" />
                        <asp:Parameter Name="u_iphone" Type="String" />
                        <asp:Parameter Name="u_mail" Type="String" />
                        <asp:Parameter Name="u_card" Type="String" />
                        <asp:Parameter Name="original_u_id" Type="Int32" />
                        <asp:Parameter Name="original_u_name" Type="String" />
                        <asp:Parameter Name="original_u_password" Type="String" />
                        <asp:Parameter Name="original_u_iphone" Type="String" />
                        <asp:Parameter Name="original_u_mail" Type="String" />
                        <asp:Parameter Name="original_u_card" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="u_id" ForeColor="#333333" GridLines="None" Height="173px" Width="535px">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="u_id" HeaderText="u_id" ReadOnly="True" SortExpression="u_id" InsertVisible="False" />
                         <asp:BoundField DataField="u_name" HeaderText="u_name" SortExpression="u_name" ReadOnly="True"/>
                         <asp:BoundField DataField="u_password" HeaderText="u_password" SortExpression="u_password" />
                         <asp:BoundField DataField="u_iphone" HeaderText="u_iphone" SortExpression="u_iphone" />
                         <asp:BoundField DataField="u_mail" HeaderText="u_mail" SortExpression="u_mail" />
                         <asp:BoundField DataField="u_card" HeaderText="u_card" SortExpression="u_card" />
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

