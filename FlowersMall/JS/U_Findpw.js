$(function () {

   



});
function CloseDialog() {
    $("#i_3").removeClass("font_2");
    $("#i_3").addClass("font_1");

    $("#i_4").removeClass("css_font1");
    $("#i_4").addClass("css_ft1");

    $(".a1").css("display", "none");
    $(".a2").css("display", "block");
    return false;
}
function CloseDialog1() {
    $("#i_5").removeClass("font_3");
    $("#i_5").addClass("font_1");

    $("#i_6").removeClass("css_font2");
    $("#i_6").addClass("css_ft1");

    $("#i_3").removeClass("font_2");
    $("#i_3").addClass("font_1");

    $("#i_4").removeClass("css_font1");
    $("#i_4").addClass("css_ft1");

    $(".a2").css("display", "none");
    $(".a1").css("display", "none");
    $(".a3").css("display", "block");
    return false;
}
    //<% --  < asp: Button ID = "Button1" runat = "server" Text = "Button"  OnClientClick = "javascript:return s1()" /> --%>