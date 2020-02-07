$(function () {

    $(".cont1").click(function () {
      
        $(".t3").css("display", "block");
        $(".right3").css("display", "none");
    });
    $(".cont2").click(function () {
     
        $(".t3").css("display", "none");
        $(".right3").css("display", "block");
    });
    $(".back1").hover(function () {
        $(this).addClass("color1");
       
    });
    $(".back1").mouseout(function () {
        $(this).removeClass("color1");

    });
    $(".back2").hover(function () {
        $(this).addClass("color1");

    });
    $(".back2").mouseout(function () {
        $(this).removeClass("color1");

    });
    $(".over").click(function () {
        window.alert('退出成功');
        window.location = '../Front/Login.aspx';
    });

    
   
});

function updata_fct() {

    $(".updata").click(function () {
        console.log(1111);
        $(".nd").css("display", "none");
        $(".nd1").css("display", "block");
    });

    return false;
}
function updata_fct1() {

    $(".adduser").click(function () {
     
        $(".nd3").css("display", "none");
        $(".nd4").css("display", "block");
    });

    return false;
}



