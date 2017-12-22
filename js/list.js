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
				$.each(rows,function(i,p){
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


	load('sofa',$('#productsRow-sofa'));
})
