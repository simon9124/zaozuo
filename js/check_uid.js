$(()=>{

    $.ajax({
        type:'GET',
        url:'data/user/get_basic.php',
        success:(data)=>{
            if(data.code==200){
                $("#userList").html(
                    `
                     <li><a href="#">我的购物车</a></li>
                        <li><a href="#">我的订单</a></li>
                        <li><a href="#" id="logout">注销</a></li>
                    `
                );
                $(".card__form").html(
                    `
                    <table></table>
                    `
                );
                $("#logout").click(function(e){
                    e.preventDefault();
                    $.ajax({
                        type:'GET',
                        url:'data/user/logout.php',
                        success:(data)=>{
                            console.log(data);
                            if(data.code==200){
                                location.reload();
                            }
                        }
                    })
                });
            }else{
                $("#userList").html(
                    `
                       <li class="login"><a href="login.html">立即登录</a></li>
                        <li class="register">没有账号?<a href="login.html">立即注册</a></li>
                    `
                )
                }
            }
    });


})