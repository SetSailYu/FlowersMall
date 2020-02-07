$(function () {
    
    // 鼠标移入移出事件
    $(".stature1").hover(function () {
        // 鼠标移入时添加open类
        $(this).addClass("open");
        $(".M-baffle1").css("display", "block");
        $(".rm1").css("display", "block");
    }, function () {
        // 鼠标移出时移出open类
        $(this).removeClass("open");
        $(".M-baffle1").css("display", "none");
        $(".rm1").css("display", "none");
    });

    $(".stature2").hover(function () {
        // 鼠标移入时添加open类
        $(this).addClass("open");
        $(".M-baffle2").css("display", "block");
        $(".rm2").css("display", "block");
    }, function () {
        // 鼠标移出时移出open类
        $(this).removeClass("open");
        $(".M-baffle2").css("display", "none");
        $(".rm2").css("display", "none");
    });

    // 鼠标移入移出事件
    $(".categorys").hover(function () {
        $(".M-Flo-dro").css("display", "block");
    }, function () {
        $(".M-Flo-dro").css("display", "none");
    });

    $(".M-Flo-dro").hover(function () {
        $(".M-Flo-dro").css("display", "block");
    }, function () {
        $(".M-Flo-dro").css("display", "none");
    });

    

});



