$(function(){
	$.ajax({
		type:"GET",
		url:"data/03_carousel.php",
		success:function(data){
			let html="";
			let indicators="";
			
			for(let i=0;i<data.length;i++){
				if(i==0){
					html+=`<div class="item active">
						<img src="${data[i].img}" alt="${i} slide">
					</div>`;
					indicators+=`
					<li data-target="#myCarousel" data-slide-to="${i}" class="active"></li>`;
				}else{
				html+=`
					<div class="item">
						<img src="${data[i].img}" alt="${i} slide">
					</div>`;
				indicators+=`
					<li data-target="#myCarousel" data-slide-to="${i}"></li>`;}
		}
			$('#items').html(html);
			$('#indicators').html(indicators);
		}
	});
	 $("#myCarousel").carousel({
        interval: 3000
    })
	
})