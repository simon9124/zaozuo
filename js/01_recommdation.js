$(()=>{
	//图片列表
	function load(kw,arg){
		$.ajax({
			type:'GET',
			url:'data/01_recommdation.php',
			data:{style:kw},
			success:function(rows){
				//console.log(rows);
				var html = '';
				var row = [];
				// 取出每类商品的前八种
				for(let j=0;j<8;j++){
					row.push(rows[j]);
				}
				$.each(row,function(i,p){
					if(i<2){
						html += `
							<div  class="product col-md-3 col-sm-6 col-xs-12">
								<div class="visible">
									<img src="${p.pic}">
									<a href="#">${p.title}</a>
									<p>${p.price}</p>
									<span class="colorSelect">${p.color_select}</span>
								</div>
								<div class="visible2">
									<span class="col-xs-12">${p.description}</span>
								</div>
								<div class="designer">
										<p class="col-xs-12">${p.designer}</p>
										<p class="col-xs-12">${p.design_from}</p>
								</div>
							</div>
						`;
					}else if(i<4){
						html += `
							<div  class="product col-md-3 col-sm-6 col-xs-12 hidden-xs">
								<div class="visible">
									<img src="${p.pic}">
									<a href="#">${p.title}</a>
									<p>${p.price}</p>
									<span class="colorSelect">${p.color_select}</span>
								</div>
								<div class="visible2">
									<span class="col-xs-12">${p.description}</span>
								</div>
								<div class="designer">
										<p class="col-xs-12">${p.designer}</p>
										<p class="col-xs-12">${p.design_from}</p>
								</div>
							</div>
						`;
					}else{
						html += `
							<div class="product col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
								<div class="visible">
									<img src="${p.pic}">
									<a href="#">${p.title}</a>
									<p>${p.price}</p>
									<span class="colorSelect">${p.color_select}</span>
								</div>
								<div class="visible2">
									<span class="col-xs-12">${p.description}</span>
								</div>
								<div class="designer">
										<p class="col-xs-12">${p.designer}</p>
										<p class="col-xs-12">${p.design_from}</p>
								</div>
							</div>
						`;
					}
				});
				arg.html(html);
			},
			error:function(err){
				alert('网络故障请检查!');
			}
		});



	//鼠标事件
	arg.on('mouseenter','.product',function(){
		//console.log('111');
		$(this).children('.visible').addClass('hidden2');
		$(this).children('.visible').children('a,p,span').addClass('hidden3');
		$(this).children('.visible2,.designer').addClass('active3');
	});
	arg.on('mouseleave','.product',function(){
		//console.log('111');
		$(this).children('.visible').removeClass('hidden2');
		$(this).children('.visible').children('a,p,span').removeClass('hidden3');
		$(this).children('.visible2,.designer').removeClass('active3');
	});

};


	load('all',$('#productsRow'));
	load('sofa',$('#productsRow-sofa'));
	load('bed',$('#productsRow-bed'));
	load('chest',$('#productsRow-chest'));
	load('table',$('#productsRow-table'));
	load('chair',$('#productsRow-chair'));

	/*服务承诺*/
	$('.row1 img').each(function (i, element) {
		//console.log('111');
		$(this).on('mouseenter',function(){
			$(this).addClass('promiseImg_active');
			$('.row2 p:eq('+i+')').addClass('promise_active');
			$('.row3 h2:eq('+i+')').addClass('promise_active');
		})
	});

	$('.row2 p').each(function (i, element) {
		//console.log(i);
		$(this).on('mouseenter',function(){
			$(this).addClass('promise_active');
			$('.row1 img:eq('+i+')').addClass('promiseImg_active');
			$('.row3 h2:eq('+i+')').addClass('promise_active');
		})
	});

	$('.row3 h2').each(function (i, element) {
		$(this).on('mouseenter',function(){
			$(this).addClass('promise_active');
			$('.row1 img:eq('+i+')').addClass('promiseImg_active');
			$('.row2 p:eq('+i+')').addClass('promise_active');
		})
	});

	$('.row1').on('mouseleave','img',function(){
		$(this).removeClass('promiseImg_active');
		$('.row2 p').removeClass('promise_active');
		$('.row3 h2').removeClass('promise_active');
	});

	$('.row2').on('mouseleave','p',function(){
		$(this).removeClass('promise_active');
		$('.row1 img').removeClass('promiseImg_active');
		$('.row3 h2').removeClass('promise_active');
	});

	$('.row3').on('mouseleave','h2',function(){
		$(this).removeClass('promise_active');
		$('.row1 img').removeClass('promiseImg_active');
		$('.row2 p').removeClass('promise_active');
	});

})
