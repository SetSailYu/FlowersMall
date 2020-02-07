

$(function () {

    var o_id = "1";

    // 鼠标移入移出事件
    $(".S-Cart").hover(function () {
        // 鼠标移入时添加open类
        let MOo_id1 = $(this).children(".S-title").children(".MO-tit").children(".MO-o_id");
        MOo_id1.addClass("MOOO");
        o_id = MOo_id1.text();
        console.log(o_id);
    }, function () {
        // 鼠标移出时移出open类
        let MOo_id2 = $(this).children(".S-title").children(".MO-tit").children(".MO-o_id");
        MOo_id2.removeClass("MOOO");
        o_id = "22";
        console.log(o_id);
    });


    //-------------------------滑块验证-------------------------begin-----
    $(".inner").mousedown(function (e) {

        //let el = $(".inner"),
        //os = el.offset(),//元素当前的偏移
        //dx,
        //$span = $(".outer>span"),
        //$filter = $(".filter-box"),
        //_differ = $(".outer").width() - el.width();

        let el = $(this),
        os = el.offset(),//元素当前的偏移
        dx,
        $span = $(this).next("span"),
        $filter = $(this).prev(".filter-box"),
        _differ = $(this).parent(".outer").width() - el.width();

        $(document).mousemove(function (e) {
            dx = e.pageX - os.left;
            if (dx < 0) {
                dx = 0;
            } else if (dx > _differ) {
                dx = _differ;
            }
            $filter.css('width', dx);
            el.css("left", dx);
        });
        $(document).mouseup(function (e) {
            $(document).off('mousemove');
            $(document).off('mouseup');
            dx = e.pageX - os.left;
            if (dx < _differ) {
                dx = 0;
                $span.html("→向右滑动支付→");
            } else if (dx >= _differ) {
                dx = _differ;
                $(".outer").addClass("act");
                $span.html("支付成功！");
                // el.html('&radic;'); <i class="iconfont icon-icon-test"></i>
                el.css({ "font-size": "17px", "color": "#7AC23C" });
                el.html('<i class="iconfont">&#xe60d;</i>');

                

                $.ajax({
                    type: "post", //要用post方式                 
                    url: "MyOder.aspx/OderPay",//方法所在页面和方法名
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ value: o_id }),//json字符串
                    async: false,//阻塞的异步就是同步
                    beforeSend: function () {
                    },
                    success: function (data) {
                        //pay_flag = data.d;
                        console.log(data.d);
                        //window.location.reload();
                    },
                    complete: function () {
                    },
                    error: function (data) {
                        alert("error: " + data);
                    }
                });
            }
            $filter.css('width', dx);
            el.css("left", dx);
        })


    });
    //-------------------------滑块验证-------------------------end-----

    //alert($(".MO-DataList2").css("height"));
    if ($(".MO-DataList2").css("height") == undefined) {
        $(".MO-hint").css("display", "block");
    } else {
        $(".MO-hint").css("display", "none");
    }



});


function SousuoOder() {
    let zhengZe = /^\d{18}$/,
        str = $(".MO-sousuo").val();
    //判断是否匹配正则表达式
    if (zhengZe.test(str)) {
        return true;
    } else {
        alert("请输入正确的订单编号格式！（18位数字）");
        return false;
    }
}

