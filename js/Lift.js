var $divLift=$("#lift"),
    $floors=$(".floor");
//当所有楼层加载完成后
$(window).scroll(()=>{
    var scrollTop=$(window).scrollTop();
    /*********确定电梯按钮列表是否显示*********/
        //任意元素距body顶部的总距离
    var offsetTop=$("#f1").offset().top;
    if(offsetTop<scrollTop+innerHeight/2)
        $divLift.show();
    else
        $divLift.hide();
    /******具体显示哪个电梯按钮*************/
    for(var f of $floors){
        var $f=$(f);
        var offsetTop=$f.offset().top;
        if(offsetTop<scrollTop+innerHeight/2){
            //找到该楼层对应的li按钮
            var i=$floors.index($f);
            var $li=
                $divLift.find(".lift_item:eq("+i+")");
            //为li添加lift_item_on class
            $li.addClass("lift_item_on")
            //为其兄弟去掉lift_item_on class
                .siblings()
                .removeClass("lift_item_on");
        }
    }
});
$divLift.on("click",".lift_item",function(){
    var $li=$(this);//this->li
    if(!$li.is(":last-child")){
        var i=$li.index();//找当前li对应的楼层
        var offsetTop=$floors.eq(i).offset().top;
        //$(window).scrollTop(offsetTop-70)
        //在HTML元素上调用animate
        //document.body.scrollTop||
        //document.documentElement.scrollTop
        $("html,body").stop(true).animate({
            scrollTop:
                $("#header-top").is(".fixed_nav")?
                    offsetTop-80:offsetTop-80-80
        },500);
    }else
        $("html,body").stop(true).animate({
            scrollTop:0
        },500);
})


$(function(){
    $(window).scroll(()=>{
        var scrollTop=$(window).scrollTop();
        if(scrollTop>450){
            $(".header,.sub-nav").addClass("fixed");
        }else{
            $(".header,.sub-nav").removeClass("fixed");
        }
    })
});