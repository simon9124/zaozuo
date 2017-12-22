$(()=>{
    // $("#container").masonry({
    //     itemSelector: '.masonry-block',
    //     columnWidth: 250,
    //     gutter:15
    // });
    var pno=1,canLoad=true;
    function Happend(){
        $.get("data/user/show.php",{pno}).then(output=>{
          var data=output.data;
            var html="";
            for(var tmp of data){
                html+=`<div class="item masonry-block">
            <img src="${tmp.pic}" alt="">
            <div class="content">
                <p>${tmp.show_content}</p>
                <p>
                    <img src="${tmp.avatar}" alt="">
                    <i>${tmp.show_uname}</i>
                    <i>${tmp.show_local}</i>
                </p>
            </div>
        </div>`;
            }
          if($('.main').html()==""){
            $('.main').append(html);
            setTimeout(()=>{
              $('.main').masonry({
                itemSelector: '.item',
                gutter:15
              });
            },100);
          }else{
            var $html=$(html);
            $('.main').append($html)
            setTimeout(()=>{
              $('.main').masonry("appended",$html);
            },50)

          }
          canLoad=true;
        });
    };
    Happend();

   var timer=null;
   $(window).off().scroll(()=>{
       var scrollTop=$("html,body").scrollTop();
       var offsetTop=$("#footer").offset().top;
       if(canLoad&&offsetTop<=scrollTop+innerHeight){
           $("#loading").show();
           pno++;
           clearTimeout(timer);
           canLoad=false;
           timer=setTimeout(Happend,1000);
       }
   })

});