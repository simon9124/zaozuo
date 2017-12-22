<?php
header("Content-type:application/json");
require_once("../00_init.php");

@$pageSize=8;
@$pno=$_REQUEST["pno"];
if(!$pno) $pno=1;

$sql="SELECT count(*) FROM `show`";
$result= mysqli_query($conn,$sql);
$count = mysqli_fetch_row($result)[0];
$pageCount=ceil($count/$pageSize);
$offset = ($pno-1)*$pageSize;
  

$sql="SELECT * FROM `show` LIMIT $offset,$pageSize";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,1);

$output = [
    "count"=>$count,
    "pageSize"=>$pageSize,
    "pageCount"=>$pageCount,
    "pno"=>$pno,
    "data"=>$rows
]; 

echo json_encode($output);
//echo json_encode($pageCount);
//echo json_encode($output);
