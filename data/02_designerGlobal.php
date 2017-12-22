<?php
require_once('00_init.php');

$sql = "SELECT did,pic,designer,design_from FROM zaozuo_designers";

$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,MYSQLI_ASSOC);

echo json_encode($rows);