<?php
header("Content-Type:application/json;charset=utf-8");
session_start();
$conn = mysqli_connect("127.0.0.1","root","","zaozuo",3306);
mysqli_query($conn,"SET NAMES UTF8");