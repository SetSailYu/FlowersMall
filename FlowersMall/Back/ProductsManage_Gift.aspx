<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductsManage_Gift.aspx.cs" Inherits="Back_ProductsManage_Gift" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <title>商品管理---礼品</title>

    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/ProductsManage.css");
        /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <!-- 导航栏 start -->
    <div class="P-navigation ">
        <div class="P-nav">
            <div>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="UserShow.aspx">信息中心</asp:HyperLink>
            </div>
            <div>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="AddProducts.aspx">新品上架</asp:HyperLink>
            </div>
            <div>
                <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#FF6A00">商品管理</asp:HyperLink>
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
    <div class="P-content">
        
        <!-- 左侧内容区 start -->
        <div class="P-con-left">
            <div class="P-con-left-tite"><i class="iconfont">&#xe689;</i>&nbsp;商品信息</div>
            <div class="P-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="AddProducts.aspx">
                        <i class="iconfont">&#xe913;</i> 新品上架
                    </asp:HyperLink>
                </span>
            </div>
            <div class="P-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink6" runat="server">
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
                    <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="#FF6A00">礼品</asp:HyperLink>
                </p>
            </div>
        </div>
        <!-- 左侧内容区 end -->
        <!-- 右侧内容区 start -->
        <div class="P-con-right">
            <br />

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <%-- AJAX控件1实现局部刷新（异步回送） --%>
            <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                <ContentTemplate>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" CellSpacing="1" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize ="9" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting"   >
                        <Columns>
                            <asp:ImageField DataImageUrlField="c_pic" DataImageUrlFormatString="~/Images/img/{0}" HeaderText="展示图">
                                <ItemStyle Width="120px" Height="200px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="c_series" HeaderText=" 系列 " SortExpression="c_series">
                                <ItemStyle Width="90px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="c_name" HeaderText=" 商品名 " SortExpression="c_name">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="c_flower_language" HeaderText=" 花语 " SortExpression="c_flower_language">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="c_flower_material" HeaderText=" 花材 " SortExpression="c_flower_material">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="c_introduce" HeaderText=" 介绍 " SortExpression="c_introduce">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="c_packing" HeaderText=" 包装 " SortExpression="c_packing">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:ImageField DataImageUrlField="c_detailed_pic" DataImageUrlFormatString="~/Images/img/{0}" HeaderText="详情图">
                                <ItemStyle Width="120px" Height="200px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="c_price" HeaderText=" 单价 " SortExpression="c_price" DataFormatString="{0:0.00}￥">
                                <ItemStyle Width="66px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="c_stock" HeaderText=" 库存数量 " SortExpression="c_stock">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="c_sale" HeaderText=" 销售数量 " SortExpression="c_sale">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <%-- AJAX控件2实现局部刷新（异步回送） --%>
                                    <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                                        <ContentTemplate>
                                            <asp:LinkButton ID="LB1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LB2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="javascript:return confirm('是否删除？')"></asp:LinkButton>
                                        </ContentTemplate>
                                        <Triggers>
                                            <%--整页回送--%>
                                            <asp:PostBackTrigger ControlID="LB2" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                    <ItemStyle Width="100px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle CssClass="ContentPlaceHolder3GridView1Row" />
                    </asp:GridView>

                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />

        </div>
        <!-- 左侧内容区 end -->

    </div>
    <!-- 内容区 end -->

</asp:Content>

