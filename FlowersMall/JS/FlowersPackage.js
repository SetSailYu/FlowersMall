

function filterNum() {
    let flg = true;
    $.ajax({
        type: "post", //要用post方式                 
        url: "FlowersPackage.aspx/getValueNum",//方法所在页面和方法名
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify({ value: true }),//json字符串
        async: false,//阻塞的异步就是同步
        beforeSend: function () {
        },
        success: function (data) {
            flg = data.d;
        },
        complete: function () {

        },
        error: function (data) {
            alert("error: " + data);
        }
    });

    console.log(flg);
    $(".F-filter-num").css("color", "#FF6A00");
    if (flg) {
        $(".F-icon1").removeClass("re");
    } else {
        $(".F-icon1").addClass("re");
    }
    $(".F-filter-price").css("color", "#737373");
}

function filterPrice() {
    let flg = true;
    $.ajax({
        type: "post", //要用post方式                 
        url: "FlowersPackage.aspx/getValuePrice",//方法所在页面和方法名
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify({ value: true }),//json字符串
        async: false,//阻塞的异步就是同步
        beforeSend: function () {
        },
        success: function (data) {
            flg = data.d;
        },
        complete: function () {
        },
        error: function (data) {
            alert("error: " + data);
        }
    });
    console.log(flg);
    $(".F-filter-price").css("color", "#FF6A00");
    if (flg) {
        $(".F-icon2").removeClass("re");
    } else {
        $(".F-icon2").addClass("re");
    }
    $(".F-filter-num").css("color", "#737373");
}





