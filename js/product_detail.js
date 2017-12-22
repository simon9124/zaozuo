$(()=>{
	/*
		商品详情
	*/
	//选项被选中
	$('.colorSelected .color,.styleSelected .styleName').click(function(){
		$(this).toggleClass('description_selected');
		$(this).parent('.borderHidden').toggleClass('borderHidden_hidden');
		$(this).parent('.borderHidden2').toggleClass('borderHidden2_hidden');

		//针对颜色选择
		$(this).parents().siblings().removeClass('borderHidden_hidden');
		$(this).parents().siblings().children().removeClass('borderHidden_hidden');

		//针对规格选择
		$(this).parents().siblings().children().removeClass('description_selected');
		$(this).parents().siblings().removeClass('borderHidden2_hidden');
		$(this).parents('.styleSelected').siblings('.styleSelected').find('.description_selected').removeClass('description_selected');
		$(this).parents('.styleSelected').siblings().find('.borderHidden2_hidden').removeClass('borderHidden2_hidden');
	});

	//数量加减
	var count = $('.numInput').val();
	$('.numPlus').click(()=>{
		count++;
		$('.numInput').val(count);
  	var price = '￥'+count*46988;
		$('.produce_price').text(price);
	});
	$('.numMinus').click(()=>{
		count--;
		if(count==0)	count = 1;
		$('.numInput').val(count);
  	var price = '￥'+count*46988;
		$('.produce_price').text(price);
	});

	//图片切换
	$('.selectRight .borderHidden').each(function(i,element){
		console.log($(this));
		$(this).on('click',function(){
			$('.description .descriptionBig img:eq('+i+')').fadeIn();
			$('.description .descriptionBig img:eq('+i+')').siblings().hide();
		})
	});

	/*
		视频
	*/
	//点击加载模态框
	$('.play_video').click(()=>{
		$('#mask').fadeIn();
		$('.video_play').fadeIn();
		$('video').trigger('play');
	});

	//关闭模态框
	$('.video_close').click(()=>{
		$('#mask').fadeOut();
		$('.video_play').fadeOut();
		$('video').trigger('pause');
	});

	/*
		5张图
	*/
	$('.bigDetailImgs .bigDetailImgs_row:first-child').show();
	$('.detailImgs .detailImgs_row:first-child').children('p').addClass('detailImgs_row_click');

	//鼠标移入小图
	$('.detailImgs .detailImgs_row').each(function(i,element){
		$(this).on('mouseenter',function(){
			$('.bigDetailImgs .bigDetailImgs_row:eq('+i+')').siblings().hide();
			$('.bigDetailImgs .bigDetailImgs_row:eq('+i+')').fadeIn();
			if(!$(this).children('p').hasClass('detailImgs_row_click')){
				$(this).children('p').addClass('detailImgs_row_hover');
			}
		})
	});

	//鼠标移出小图
	$('.detailImgs').on('mouseleave','.detailImgs_row',function(){
		$(this).children('p').removeClass('detailImgs_row_hover');
		$('.detailImgs_row_click').fadeIn();
	});

	//鼠标点击小图
	$('.detailImgs').on('click','.detailImgs_row',function(){
		$(this).children('p').addClass('detailImgs_row_click');
		$(this).siblings().children('p').removeClass('detailImgs_row_click');
	});

	//鼠标移入大图
	$('.bigDetailImgs .bigDetailImgs_row').each(function(i,element){
		$(this).on('mouseenter',function(){
				$('.largeDetailImgs').show();
				$('.largeDetailImgs .largeDetailImgs_row:eq('+i+')').addClass('large_show').siblings().removeClass('large_show');
		});
	});

	//鼠标在大图移动
	$('.largeDetailImgs .largeDetailImgs_row').mousemove(function(e){
			$('.largeDetailImgs').addClass('largeDetailImgs_mouseIn');
			//在大容器显示放大图片
			//console.log('触发移动')
			//console.log("x"+e.offsetX);
			//console.log("y"+e.offsetY);
			$('.largeDetailImgs .large_show').css({
					'left':-284*e.offsetX/1280,
					'top':-160*e.offsetY/720
			});
  });

	//鼠标移出大图
	$('.largeDetailImgs').mouseout(function(){
			//console.log("离开large")
			$('.largeDetailImgs').hide();
			$('.largeDetailImgs .large_show').removeClass('large_show');
			$('.largeDetailImgs').removeClass('largeDetailImgs_mouseIn');
	});

	//点击下拉
	$('.pullDown_detail>p:last-child').click(()=>{
		
		//当前可视窗口高度
		var pageHeight = $(window).height();
		//console.log(pageHeight);

		//'.pullDown'距离文档顶部距离
		var distancePullDown = $('.pullDown').offset().top;
		//console.log(distancePullDown);

		if(!$('.DANI').hasClass('DANI_pullDown')){
			$('body,html').animate({
				'scrollTop':distancePullDown +$('.pullDown').height() - pageHeight/2
			},500);
		}
		
		$('.DANI').toggleClass('DANI_pullDown');
		//$('.DANI').toggleClass('DANI_show');
	});

	//点击收起
	$('.DANI_detail .pullUp').click(()=>{
		$('.DANI').removeClass('DANI_pullDown');
	});
});