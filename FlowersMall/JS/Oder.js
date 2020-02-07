
var pay_flag = false;

var ddl1 = false;
var ddl2 = false;
var ddl3 = false;
var ddl4 = false;

function yanzheng() {
    console.log(11111111111111);
    if ($(".ddl1").find("option:selected").text() == "") {
        console.log($(".textBox1").val());
        if ($(".textBox1").val() != "") {
            ddl1 = true;
        } else {
            ddl1 = false;
        }
        console.log(ddl1);
    } else {
        ddl1 = true;
    }
    if ($(".ddl2").find("option:selected").text() == "") {
        console.log($(".textBox2").val());
        if ($(".textBox2").val() != "") {
            ddl2 = true;
        } else {
            ddl2 = false;
        }
        console.log(ddl2);
    } else {
        ddl2 = true;
    }
    if ($(".ddl3").find("option:selected").text() == "") {
        console.log($(".textBox3").val());
        if ($(".textBox3").val() != "") {
            ddl3 = true;
        } else {
            ddl3 = false;
        }
        console.log(ddl3);
    } else {
        ddl3 = true;
    }
    if ($(".ddl4").find("option:selected").text() == "") {
        console.log($(".textBox4").val());
        if ($(".textBox4").val() != "") {
            ddl4 = true;
        } else {
            ddl4 = false;
        }
        console.log(ddl4);
    } else {
        ddl4 = true;
    }

    return ddl1 == true && ddl2 == true && ddl3 == true && ddl4 == true ? true : false;
}


$(function () {

    
    //-------------------------滑块验证-------------------------begin-----
    $(".inner").mousedown(function (e) {

        if (yanzheng()) {

            let el = $(".inner"),
        os = el.offset(),//元素当前的偏移
        dx,
        $span = $(".outer>span"),
        $filter = $(".filter-box"),
        _differ = $(".outer").width() - el.width();
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
                        url: "Oder.aspx/ShoppingPay",//方法所在页面和方法名
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({ value: true }),//json字符串
                        async: false,//阻塞的异步就是同步
                        beforeSend: function () {
                        },
                        success: function (data) {
                            pay_flag = data.d;
                            console.log(data.d);
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

        } else {
            alert("请把信息补充完整！");
        }

    });
    //-------------------------滑块验证-------------------------end-----

});


function PayFlag() {
    if (yanzheng()) {
        if (pay_flag) {
            return true;
        } else {
            return confirm('还未支付，是否继续提交未支付订单？');
        }
    } else {
        alert("请把信息补充完整！");
        return false;
    }
    
}

