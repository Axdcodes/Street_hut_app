<?php

$server = "street_hut_server";
$user = "root";
$password = "";
$db = "street_hut_db";

$conn = mysqli_connect($server,$user,$password,$db);

if(!$conn) {
    die("Connection Failed:".mysqli_connect_error());
}
