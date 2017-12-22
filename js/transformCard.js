var $lamp = document.querySelector('.card__lamp');
var $cardClock = document.querySelector('.card__clock');
var $sofa = document.querySelector('.card_sofa');
var $card = document.querySelector('.card');
var $cardSunShine1 = document.querySelector('.card__sunShine1');
var $cardSunShine2 = document.querySelector('.card__sunShine2');
var $cardForm = document.querySelector('.card__form');
var $regist = $('.btn_regist');
var $forgot = $('.btn_forgot');
var $wechat = $('.btn_wechat');

var generateTranslate = function generateTranslate(el, e, value) {
    el.style.transform = 'translate(' + e.clientX * value + 'px, ' + e.clientY * value + 'px)';
};
// http://stackoverflow.com/a/1480137
var cumulativeOffset = function cumulativeOffset(element) {
    var top = 0,
        left = 0;
    do {
        top += element.offsetTop || 0;
        left += element.offsetLeft || 0;
        element = element.offsetParent;
    } while (element);

    return {
        top: top,
        left: left
    };
};
document.onmousemove = function (event) {
    var e = event || window.event;
    var x = (e.pageX - cumulativeOffset($card).left - 350 / 2) * -1 / 100;
    var y = (e.pageY - cumulativeOffset($card).top - 350 / 2) * -1 / 100;

    var matrix = [[1, 0, 0, -x * 0.00005], [0, 1, 0, -y * 0.00005], [0, 0, 1, 1], [0, 0, 0, 1]];

    generateTranslate($cardClock, e, 0.02);
    generateTranslate($cardForm, e, 0.03);
    generateTranslate($cardSunShine1, e, 0.09);
    generateTranslate($cardSunShine2, e, 0.03);
    generateTranslate($lamp, e, 0.05);
    generateTranslate($sofa, e, 0.03);

    $card.style.transform = 'matrix3d(' + matrix.toString() + ')';
};
$regist.click(function(e){
    e.preventDefault();
    $('.card__form').removeClass("showForgot")
        .removeClass("showWechat").
    toggleClass("showRegister")

})
$forgot.click(function(e){
    e.preventDefault();
    $('.card__form').removeClass("showRegister")
        .removeClass("showWechat").toggleClass("showForgot")

})
$wechat.click(function(e){
    e.preventDefault();
    $('.card__form').removeClass("showRegister")
        .removeClass("showForgot").toggleClass("showWechat")

})