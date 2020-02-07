<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Jump.aspx.cs" Inherits="Jump" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>跳转页面</title>
        <style type="text/css">
            @import url("Style/MasterPage.css");
            /*加载iconFont资源*/
            @import url("../Style/iconFont/iconfont.css");
            .J-jump-time-tite,.J-jump-time {
                margin: 0 auto;
                width: 1000px;
                height: 100px;
                font-size: 50px;
                font: bold;
            }
        </style>
        <script type="text/javascript" src="JS/jquery.min.js"></script>
        <script src="JS/MasterPage.js"></script>
    <script type="text/javascript">
        function jump() {
            location.href = "Front/Login.aspx?";          //location.href实现客户端页面的跳转  
        }
        var J_datastr = 5;
        function doad() {
            //getid(id).innerHTML = datastr; 这个是原生js的写法
            J_datastr--;
            $(".J-jump-time").html(J_datastr); //这个是jquery写法
        }
        setInterval(doad, 1000);
        setInterval(jump, 5000);
    </script>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <br />
    <br />
    <br />
    <br />
    <br />

    <div class="J-jump-time-tite">
        页面跳转中。。。。。。
    </div>
    <div class="J-jump-time">5</div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>

