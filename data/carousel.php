<?php

header("Conent-type:application/json");
require_once("./00_init.php");

$sql="SELECT * FROM zaozuo_carousel";

$result=mysqli_query($conn,$sql);

$row = mysqli_fetch_all($result,1);

echo json_encode($row);