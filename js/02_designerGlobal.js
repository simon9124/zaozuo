$(()=>{
	//图片列表
	$.ajax({
		type:'GET',
		url:'data/02_designerGlobal.php',
		success:function(rows){
			//console.log(rows);
			var html = '';
			$.each(rows,function(i,p){
				if(i<2){
					html += `
						<div class="designer col-md-3 col-sm-6 col-xs-12">
							<img src="${p.pic}">
							<div class="shadowBlack">
								<img src="${p.pic}">
							</div>
							<div class="designerGlobal">
								<h1>${p.designer}</h1>
								<p>${p.design_from}</p>
							</div>
						</div>	
					`;
				}else if(i<4){
					html += `
						<div class="designer col-md-3 col-sm-6 col-xs-12 hidden-xs">
							<img src="${p.pic}">
							<div class="shadowBlack">
								<img src="${p.pic}">
							</div>
							<div class="designerGlobal">
								<h1>${p.designer}</h1>
								<p>${p.design_from}</p>
							</div>
						</div>	
					`;
				}else{
					html += `
						<div class="designer col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
							<img src="${p.pic}">
							<div class="shadowBlack">
								<img src="${p.pic}">
							</div>
							<div class="designerGlobal">
								<h1>${p.designer}</h1>
								<p>${p.design_from}</p>
							</div>
						</div>	
					`;
				}
				
			});
			$('.designersRow').html(html);
		},
		error:function(err){
			alert('网络故障请检查!');
		}
	});

	//鼠标事件
	$('.designersRow').on('mouseenter','.designer',function(){
		$(this).children('.shadowBlack').addClass('shadow_active');
		$(this).children('.designerGlobal').addClass('designer_active');
	});
	$('.designersRow').on('mouseleave','.designer',function(){
		$(this).children('.shadowBlack').removeClass('shadow_active');
		$(this).children('.designerGlobal').removeClass('designer_active');
	});
});