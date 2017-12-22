<?php
/**
* 根据会话中保存的登录数据，返回当前登录用户的相关信息
*/
header('Content-Type: application/json;charset=UTF-8');
require_once('../00_init.php');

if (!session_id()) session_start();
@$uid = $_SESSION['loginUid'];
if(!$uid){
  die('{"code":401, "msg":"login required"}');
}

$sql = "SELECT * FROM zaozuo_user WHERE uid=$uid";
$result = mysqli_query($conn,$sql);

if(!$result){       //SQL语句执行失败
  echo('{"code":500, "msg":"db execute err"}');
}else {
  $row = mysqli_fetch_assoc($result);
  if(!$row){        //用户编号不存在
    echo('{"code":501, "msg":"uid not exists"}');
  }else {           //查询成功
    $row['code'] = 200;
    echo json_encode($row);
  }
}