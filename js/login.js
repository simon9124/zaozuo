/**用户名和密码的非空验证**/
$("#login_uname").blur(function () {
    $("#showLoginResult").text("");
    if (!this.value) {
        $("#showLoginResult").text("用户名不能为空！");
        $("#showLoginResult").css("color", "red");
        return false;
    }
});

$("#login_upwd").blur(function () {
    $("#showLoginResult").text("");
    if (!this.value) {
        $("#showLoginResult").text("密码不能为空！");
        $("#showLoginResult").css("color", "red");
        return false;
    }
});

/**登录单击按钮事件监听**/
$('#bt-login').click(function () {
    var uname =  $("#login_uname").val();
    var upwd = $("#login_upwd").val();
    $.ajax({
        type: 'POST',
        url: 'data/user/login.php',
        data: {'uname':uname,'upwd':upwd},
        success: function (result) {
            if (result.code === 200) {              //登录成功
                location.href = 'index.html';
            } else  {       //登录失败
                $("#showLoginResult").text('用户名或密码输入有误');
            }
        }
    });
});

