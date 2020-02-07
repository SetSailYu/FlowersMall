

//var flag = false;
var box1 = true, box2 = true, box3 = true, box4 = true, box5 = true, box6 = true, box7 = true;

$(function () {

    //验证事件 
    //错误信息提醒
    function Msg1(zhengZe, str, id) {
        //判断是否匹配正则表达式
        if (zhengZe.test(str)) {
            $(id).css("display", "none"); //修改指定元素的指定css值
            return true;
        } else {
            $(id).css("display", "block");
            return false;
        }
    }
    function Msg2(id2, str, id1) {
        //判断是否内容为空
        if (str == "") {
            $(id1).css("display", "none");
            $(id2).css("display", "block");
            return false;
        } else {
            $(id2).css("display", "none");
            return true;
        }
    }
    //正则验证提示
    function ZhengZeMsg(zhenZe,str,box,A_msg1,A_msg2) {
        //let zhenZe = /^.{0,30}$/, //正则表达式
        //    str = $('#ContentPlaceHolder3_TextBox3').val(); //获取指定元素的值
        box = Msg1(zhenZe, str, A_msg1) && Msg2(A_msg2, str, A_msg1) ? true : false;
    }
    //为$(选定元素id)绑定keyup事件 →→ 当按钮被松开时，发生 keyup 事件。它发生在当前获得焦点的元素上。
    //商品名
    $('#ContentPlaceHolder3_TextBox1').keyup(function (event) {
        ZhengZeMsg(/^.{0,50}$/, $('#ContentPlaceHolder3_TextBox1').val(), box1, ".A-nameMsg1", ".A-nameMsg2");//调用验证
    });
    //花语
    $('#ContentPlaceHolder3_TextBox2').keyup(function (event) {
        ZhengZeMsg(/^.{0,100}$/, $('#ContentPlaceHolder3_TextBox2').val(), box2, ".A-LMsg1", ".A-LMsg2");//调用验证
    });
    //花材
    $('#ContentPlaceHolder3_TextBox3').keyup(function (event) {
        ZhengZeMsg(/^.{0,100}$/, $('#ContentPlaceHolder3_TextBox3').val(), box3, ".A-materialsMsg1", ".A-materialsMsg2");//调用验证
    });
    //包装
    $('#ContentPlaceHolder3_TextBox5').keyup(function (event) {
        ZhengZeMsg(/^.{0,50}$/, $('#ContentPlaceHolder3_TextBox5').val(), box5, ".A-packMsg1", ".A-packMsg2");//调用验证
    });
    //介绍
    $('#ContentPlaceHolder3_TextBox4').keyup(function (event) {
        ZhengZeMsg(/^.{0,200}$/, $('#ContentPlaceHolder3_TextBox4').val(), box4, ".A-presentationMsg1", ".A-presentationMsg2");//调用验证
    });
    //单价
    $('#ContentPlaceHolder3_TextBox6').keyup(function (event) {
        ZhengZeMsg(/^(\+)?\d+(\.\d+)?$/, $('#ContentPlaceHolder3_TextBox6').val(), box6, ".A-priceMsg1", ".A-priceMsg2");//调用验证
    });
    //数量
    $('#ContentPlaceHolder3_TextBox7').keyup(function (event) {
        ZhengZeMsg(/^(\+)?\d+(\d+)?$/, $('#ContentPlaceHolder3_TextBox7').val(), box7, ".A-numMsg1", ".A-numMsg2");//调用验证
    });

    //分类选择事件
    //分类选择显示
    function classifyShow(A_c2none, A_c3none, A_c4none, A_c5show) {
        //最后一个参数显示
        $(A_c2none).css("display", "none");
        $(A_c3none).css("display", "none");
        $(A_c4none).css("display", "none");
        $(A_c5show).css("display", "block");
    }
    //为 分类 Select添加事件，当选择其中一项时触发
    $(".A-classify1").change(function () {
        let checkIndex = $(".A-classify1").get(0).selectedIndex;//获取Select选择的索引值
        switch (checkIndex) {
            case 0:
                // 永生花  礼品  花材  系列(显示)
                classifyShow(".A-classify3", ".A-classify4", ".A-classify5", ".A-classify2");
                $(".A-materials-box").css("display", "block");//花材textbox
                break;
            case 1:
                //  系列 礼品  花材  永生花(显示)
                classifyShow(".A-classify2", ".A-classify4", ".A-classify5", ".A-classify3");
                $(".A-materials-box").css("display", "block");//花材textbox
                break;
            case 2:
                //  系列  永生花  花材  礼品(显示)
                classifyShow(".A-classify2", ".A-classify3", ".A-classify5", ".A-classify4");
                $(".A-materials-box").css("display", "block");//花材textbox
                break;
            case 3:
                //  系列  永生花  礼品  花材(显示)
                classifyShow(".A-classify2", ".A-classify3", ".A-classify4", ".A-classify5");
                let classify5checkIndex = $(".A-classify5").get(0).selectedIndex;//获取.A-classify5的Select选择的索引值
                if (classify5checkIndex == 7) {
                    $(".A-materials-box").css("display", "block");//花材textbox
                    ZhengZeMsg(/^.{0,100}$/, $('#ContentPlaceHolder3_TextBox3').val(), box3, ".A-materialsMsg1", ".A-materialsMsg2");//调用验证
                } else {
                    $(".A-materials-box").css("display", "none");//花材textbox
                }
                break;
        }
    });
    //花材选择
    $(".A-classify5").change(function () {
        let checkIndex = $(".A-classify5").get(0).selectedIndex;//获取Select选择的索引值
        switch (checkIndex) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                $(".A-materials-box").css("display", "none");//花材textbox 关闭
                $(".A-materialsMsg1").css("display", "none");//花材textbox提示1 关闭
                $(".A-materialsMsg2").css("display", "none");//花材textbox提示2 关闭
                break;
            case 7:
                $(".A-materials-box").css("display", "block");//花材textbox
                ZhengZeMsg(/^.{0,100}$/, $('#ContentPlaceHolder3_TextBox3').val(), box3, ".A-materialsMsg1", ".A-materialsMsg2");//调用验证
                break;
        }
    });
    
});

/***----------------------------------------------------- 页面直接调用函数区 -------------------------------------------------------------------------------------***/

//图片显示事件
//检查上传文件大小和获取文件名
//function fileChange(target) {
//    var fileSize = 0;
//    var filePath = target.value;
//    var fileSystem = new ActiveXObject("Scripting.FileSystemObject");
//    var file = fileSystem.GetFile(filePath);
//    fileSize = file.Size;
//    var size = fileSize / 1024;
//    if (size > 10000) {
//        alert("附件不能大于10M");
//    }
//    var arr = filePath.split("\\");
//    console.log(size + "KB");
//    console.log(arr[arr.length - 1]);

//}
// 图片显示,获取图片地址
function getFileUrl(sourceId) {
    let url;
    if (navigator.userAgent.indexOf("MSIE") >= 1) { // IE 
        url = document.getElementById(sourceId).value;
    }
    else if (navigator.userAgent.indexOf("Firefox") > 0) { // Firefox 
        url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
    }
    else if (navigator.userAgent.indexOf("Chrome") > 0) { // Chrome 
        url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
    }
    return url;
}
function preImg(source, targetId) {
    //fileChange(source);
    let url = getFileUrl(source.id);
    let imgPre = document.getElementById(targetId);
    imgPre.src = url;
    if ($("#ContentPlaceHolder3_Image1")[0].src != "") {
        $(".A-imgMsg1").css("display", "none");
    } else {
        $(".A-imgMsg1").css("display", "block");
    }
}



//单击提交按钮验证事件
function Msg2Block(element,id,box) {
    if (!element || element.val() == "") {
        $(id).css("display", "block"); // 当没有任何输入点击按钮时，直接打开提示
        box = false;
    }
}
function ButClick() {
    let name = $('#ContentPlaceHolder3_TextBox1'); // 商品名
    let Language = $('#ContentPlaceHolder3_TextBox2'); // 花语
    let materials = $('#ContentPlaceHolder3_TextBox3'); // 花材
    let pack = $('#ContentPlaceHolder3_TextBox5'); // 包装
    let presentation = $('#ContentPlaceHolder3_TextBox4'); // 介绍
    let price = $('#ContentPlaceHolder3_TextBox6'); // 单价
    let num = $('#ContentPlaceHolder3_TextBox7'); // 数量
    
    // 商品名
    Msg2Block(name, ".A-nameMsg2", box1);
    // 花语
    Msg2Block(Language, ".A-LMsg2", box2);
    // 花材
    if (materials.css("display") == "block") { // 判断该花材输入框是否显示
        Msg2Block(materials, ".A-materialsMsg2", box3);
    } else {
        $(".A-materialsMsg2").css("display", "none");
        box3 = true;
    }
    // 包装
    Msg2Block(pack, ".A-packMsg2", box5);
    // 介绍
    Msg2Block(presentation, ".A-presentationMsg2", box4);
    // 单价
    Msg2Block(price, ".A-priceMsg2", box6);
    // 数量
    Msg2Block(num, ".A-numMsg2", box7);
    //展示图片
    let imgb = true;
    let url = $("#ContentPlaceHolder3_Image1")[0].src;
    if (url == "") {
        $(".A-imgMsg1").css("display", "block");
        imgb = false;
    }
    
    if (box1 && box2 && box3 && box4 && box5 && box6 && box7 && imgb) {
        return true;
    } else {
        alert("上架失败！请按提示补全商品信息！");
        return false;
    }

}







