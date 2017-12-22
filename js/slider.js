function Slider() {
  this.oWrapper = $('#wrapper');
  this.oParent = null;
  this.oSlider = null;
  this.slider_item = null;
  this.btn_item = null;

  this.iNow = 0;
  this.slider_w = 0;
  this.slider_h = 0;
  this.timer = null;
  this.get_l = null;

  this.settings = {
    slider_num: 4,
    w: 1200,
    h: 500
  };
};

Slider.prototype = {
  nextSlider: function (dis) {
    var self = this;

    if (dis > this.settings.w * 0.4) {
      if (this.iNow === this.slider_item.length - 1) {
        for (var i = 1; i < this.slider_item.length - 1; i++) {
          $(this.slider_item[i]).css({left: this.slider_w});

          this.slider_item.eq(this.iNow).animate({left: -this.slider_w});
          // 这里因为move时已经移动了一些距离，所以直接left: 0
          this.slider_item.eq(0).animate({left: 0});
        }

        this.iNow = 0;
      } else {
        this.slider_item.eq(this.iNow).animate({left: -this.slider_w});
        this.slider_item.eq(this.iNow + 1).animate({left: 0});

        this.iNow ++;
      }

      // 圆点及主题颜色的变化
      this.setDot(this.iNow);

      if (this.iNow === 0) {
        this.themeClass(true);
      } else {
        this.themeClass(false);
      }
    } else {
      this.slider_item.eq(this.iNow).animate({left: 0});

      if (this.iNow === this.slider_item.length - 1) {
        this.slider_item.eq(0).animate({left: this.slider_w});
      } else {
        this.slider_item.eq(this.iNow + 1).animate({left: this.slider_w});
      }
    }
  },

  prevSlider: function (dis) {
    var self = this;

    if (Math.abs(dis) > this.settings.w * 0.4) { // 拖动超过一定距离时
      this.slider_item.eq(this.iNow).animate({left: this.slider_w});
      this.slider_item.eq(this.iNow - 1).animate({left: 0});

      if (Math.abs(this.iNow) === this.slider_item.length - 1) {
        this.iNow = 0;
      } else {
        this.iNow --;
      }

      // 圆点及主题颜色的变化
      this.setDot(this.iNow);

      if (this.iNow === 0) {
        this.themeClass(true);
      } else {
        this.themeClass(false);
      }
    } else {
      this.slider_item.eq(this.iNow).animate({left: 0});
      this.slider_item.eq(this.iNow - 1).animate({left: -this.slider_w});
    }
  },

  moveDistance: function (dis) {
    if (dis < 0) {
      this.slider_item.eq(this.iNow).css({left: dis});

      if (this.iNow === this.slider_item.length - 1) {
        this.slider_item.eq(0).css({left: this.get_l + dis});
      } else {
        this.slider_item.eq(this.iNow + 1).css({left: this.get_l + dis});
      }
    } else if (dis > 0) {
      this.slider_item.eq(this.iNow).css({left: dis});
      this.slider_item.eq(this.iNow - 1).css({left: dis - this.get_l});
    }
  },

  mousedown: function (ev) {
    var self = this;
    var oEvent = ev || window.event;
    var disX = oEvent.clientX;
    var recordX = oEvent.clientX;

    document.onmousemove = function (ev) {
      var oEvent = ev || window.event;

      recordX = oEvent.clientX;

      self.moveDistance(recordX - disX);
    };

    document.onmouseup = function (ev) {
      if (disX - recordX > 0) {
        self.nextSlider(disX - recordX);
      } else if (disX - recordX < 0) {
        self.prevSlider(disX - recordX);
      }

      document.onmousemove = null;
      document.onmouseup = null;
    };
  },

  themeClass: function (state) {
    var self = this;

    if (state) {
      this.oWrapper.addClass('theme-white');
    } else {
      //this.oWrapper.removeClass('theme-white');
    }
  },

  sliderChange: function (index) {
    var self = this;

    if (this.iNow < index) {
      this.slider_item.eq(this.iNow).animate({left: -this.slider_w});
      this.slider_item.eq(index).css({left: this.slider_w});
    } else {
      this.slider_item.eq(this.iNow).animate({left: this.slider_w});
      this.slider_item.eq(index).css({left: -this.slider_w});
    }

    this.slider_item.eq(index).animate({left: 0}, function () {
      if (index === 0) {
        self.themeClass(true);
      } else {
        self.themeClass(false);
      }
    });
  },

  setDot: function (index) {
    this.btn_item.removeClass('btn-item__cur');
    this.btn_item.eq(index).addClass('btn-item__cur');
  },

  setData: function () {
    var sliderBox_w = this.settings.w * this.slider_item.length;
    var sliderBox_h = this.settings.h * this.slider_item.length;

    this.oParent.css({width: this.settings.w, height: this.settings.h});
    this.slider_item.css({position: 'absolute', width: this.settings.w, height: this.settings.h});

    for (var i = 1; i < this.slider_item.length; i++) {
      $(this.slider_item[i]).css({left: this.settings.w});
    }

    this.oSlider.css({width: sliderBox_w, height: this.settings.h});

    this.setDot(0);
    this.themeClass(true);
  },

  createElem: function (oParent) {
    var createSlider = document.createElement('div');
    var imgStr = '';
    var btnStr = '';

    for (var i = 0; i < this.settings.slider_num; i ++) {
      imgStr += '<a href="javascript:;" class="slider-item" style=" background: url(images/cont/bg'+(i + 1)+'.png) no-repeat center;"></a>';
      btnStr += '<a href="javascript:;" class="btn-item"></a>';
    }

    $(createSlider).attr({id: oParent, class: 'slider-box'});
    $(createSlider).html('<div class="slider">'+imgStr+'</div><div class="btn-box">'+btnStr+'</div>');

    this.oWrapper.append(createSlider);
  },

  inital: function (oParent, opt) {
    var self = this;

    $.extend(this.settings, opt);

    this.createElem(oParent);

    this.oParent = $('#'+oParent+'');
    this.oSlider = this.oParent.find('.slider');
    this.slider_item = this.oSlider.find('.slider-item');
    this.btn_item = this.oParent.find('.btn-item');

    this.setData();

    this.slider_w = this.slider_item.eq(0).width();
    this.slider_h = this.slider_item.eq(0).height();
    this.get_l = this.settings.w;

    this.btn_item.click(function () {
      var index = $(this).index();

      self.setDot(index);

      self.sliderChange(index);

      self.iNow = $(this).index();
    });

    this.oSlider.on('mousedown', function () {
      self.mousedown();

      return false;
    });
  },

  constructor: Slider
};