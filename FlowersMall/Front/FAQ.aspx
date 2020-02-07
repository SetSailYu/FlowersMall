<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="Back_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>帮助中心</title>
    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/AddProducts.css");
        @import url("../Style/DetailsFlower.css");
         @import url("../Style/FAQ.css");
                /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
   </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
     <script type="text/javascript" src="../JS/MasterPage.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
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
                        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Front/Index.aspx" runat="server">首页</asp:HyperLink>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton1" OnClick="XH_LinkButton1_Click" runat="server">鲜花套餐</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton3" OnClick="YS_LinkButton1_Click" runat="server">永生花</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton4" OnClick="XH_LinkButton1_Click" runat="server">花材</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton12" OnClick="LP_LinkButton1_Click" runat="server">礼品</asp:LinkButton>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Front/huayu.aspx" runat="server">花语大全</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink6" NavigateUrl="~/Front/U_levaeMessage.aspx" runat="server">留言</asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink4" NavigateUrl="~/Front/FAQ.aspx" runat="server" ForeColor="#FF6A00">帮助中心</asp:HyperLink>
                    </li>
                </ul>
                
            </div>
            <!-- 导航栏 end -->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <div id="A-content" style="width:1200px;margin: 0 auto; height:1200PX ">
     <!-- 左侧内容区 start -->
        <div class="A-con-left" style="float: left;">
         <div class="A-con-left-tite"><i class="iconfont">&#xe689;</i>&nbsp;帮助中心</div>
            <div class="A-con-left-item">
                <span>
                    <asp:HyperLink ID="HyperLink5" runat="server">
                        <i class="iconfont">&#xe913;</i> 常见问题
                    </asp:HyperLink>
                </span>
                <p>
                    <asp:HyperLink ID="HyperLink11" runat="server" ForeColor="#FF6A00" NavigateUrl="FAQ.aspx" >常见问题</asp:HyperLink>
                </p>
                
            </div>
        
    
           </div>
          <!-- 左侧内容区 end -->
          
         


        <div id="content_mid">
            <div id="content_mid_tile">
                <h3 id="content_mid_h3">
                    <b>FAQ</b>
                    <br />
                    鲜花订购常见问题
                </h3>
            </div>
            <div id="content_mid_content">
                <p>
                    下面精选了客户问得最多的几个问题，基本能解答您的大部份疑问。
                    如果您是第一次在本站订购，强烈建议您浏览，可节约您咨询的宝贵时间：
                </p>
                <h5>
                    (1) 问：我订鲜花(蛋糕)最快多久能送到？
                </h5>
                <p>
                    答：在您订购付款后，鲜花最快1-3个小时送到接收人手上（注：此时间为可能的最快送货时间，我们会确保在您下单所选时间段内送达）。蛋糕一般提前半天订购就可以送到。
                </p>
                <h5>
                    (2) 问：我要送鲜花（或蛋糕）,需要提前预订吗？
                </h5>
                <p>
                   答：鲜花（或蛋糕）一般提前半天订购就可以送到。当然，您提前一个月、两个月、半年，或提前更长时间订购都是可以的，我们都会在您指定的日期为您配送（鲜花蛋糕都是配送当日新鲜材料制作而成，确保新鲜度，敬请放心订购！）。越早订，越从容：
                      <br /> （1）您提前预订，方便我们提前安排；
                      <br /> （2）如果您订的鲜花含有特殊花材，则是需要提前预订的，提前预订可确保花材齐全；
                      <br />  （3）提前订好，我们会记住您选择的配送日期，按指定日期准时送达，即使忙碌，也保证您不会错过任何一个重要的日子！                </p>
                <h5>
                    (3) 问：异地送花可以吗？[具体如：我人在北京，要送花到长沙去，可以吗？
                </h5>
                <p>
                    答：可以，花礼网全国连锁，全部直辖市、省会/首府、地级市（除西藏、青海）、大部分县级城市都可以配送，可送达全国2000+城市。
                </p>
                <h5>
                    (4) 问：鲜花是免费配送的吗？
                </h5>
                <p>
                    答：市区和近郊是免费配送的！偏远地址需确认能否配送。
                </p>
                <h5>
                    (5) 问：我要选择某一个时段送到？可以吗？
                </h5>
                <p>
                    答：提交订单时您可以选择上午(8:30-12:00)、下午(12:00-18:00)、晚上(18:00-21:00)三个时段；如果对配送时间点有特别需求，您可以选择定时服务。特别提示：如果下单时间距离所选时段少于3小时，
                    您所选时段无法满足的情况下，将尽量在您付款后3小时内送到。
                </p>
                <h5>
                    (6) 问：你们的花新不新鲜？
                </h5>
                <p>
                    答：配送当天新鲜采购昆明A级花材制作，确保花材新鲜。

                </p>
               <h5>
                    (7) 问：送到的鲜花会和图片上的一样吗？
                </h5>
                <p>
                    答：我们花艺师会严格按图片样式及花材来制作，确保一致。秉承“送前实拍”的原则，所见即所得。
                </p>
                <h5>
                    (8) 问：鲜花款式都是你们自己设计的？吗？
                </h5>
                <p>
                    答：本站所有鲜花款式都是由公司花艺师团队精心打造，100%原创设计，并已为上百款作品申请了版权保护。如果您发现其他网站有相同款式，皆为违法抄袭本公司作品，
                    欢迎您提供线索举报，本公司将通过司法途径打击抄袭这种违法侵权行为。
                </p>
            </div>

        </div>
    </div>

     


</asp:Content>

