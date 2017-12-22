$(function () {
  var oWrapper = $('#wrapper');
  var bg_white = oWrapper.find('.bg-white');
  var bg_black = oWrapper.find('.bg-black');
  var nav_item = oWrapper.find('[data-subNav]');
  var sub_nav = oWrapper.find('.sub-nav');
  var subNav_wrapper = sub_nav.find('.sub-nav__wrap');
  var timer = null;

  nav_item.hover(function () {
    clearTimeout(timer);
    hoverChange();

    var getVal = $(this).attr('data-subNav');
    var subNav_cur = $('.sub-nav__wrap[data-link='+getVal+']');

    goodsShow(subNav_cur);
  }, function () {
    timer = setTimeout(function () {
      outChange();
    }, 100);
  });


  sub_nav.hover(function () {
    clearTimeout(timer);
  }, function () {
    timer = setTimeout(function () {
      outChange();
    }, 100);
  });

  function hoverChange() {
    bg_white.addClass("fadeIn");
    bg_black.addClass("fadeIn");
    sub_nav.addClass("sub-nav_show")
  }

  function outChange() {
    bg_white.removeClass("fadeIn");
    bg_black.removeClass("fadeIn");
    sub_nav.removeClass("sub-nav_show")
  }

  // 当前商品容器显示
  function goodsShow(subNav_cur) {
    subNav_wrapper.hide();
    subNav_cur.show();
  }

});