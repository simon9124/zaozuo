<?php
/**
* 修改用户密码
*/
header('Content-Type: application/json;charset=UTF-8');

session_start();
@$uid = $_SESSION['loginUid'];
if(!$uid){
  die('{"code":401,"msg":"login required"}');
};

@$old_pwd = $_REQUEST['old_pwd'] or die('{"code":402,"msg":"old pwd required"}');
@$new_pwd = $_REQUEST['new_pwd'] or die('{"code":403,"msg":"new pwd required"}');


require_once('../init.php');
$sql = "UPDATE xz_user SET upwd='$new_pwd' WHERE uid=$uid AND upwd='$old_pwd'";
$result = mysqli_query($conn,$sql);

if(!$result){         //SQL执行失败
  echo('{"code":500, "msg":"db execute err"}');
}else {
  $count = mysqli_affected_rows($conn);
  if($count!==1){     //旧密码输入错误
    echo('{"code":201, "msg":"old password err"}');
  }else {             //修改成功
    echo('{"code":200, "msg":"update succ"}');
  }
}
