<?php

define("SERVER", "localhost");
define("USER", "root");
define("PASSWORD", "");
define("DB", "MyDb");

$conn = mysqli_connect(SERVER, USER, PASSWORD) or die ('Error connecting to mysql'); 
mysqli_select_db($conn, DB)or die ('Error selecting to db');
$link = $conn;
$session = mysqli_real_escape_string($link, $_REQUEST['session']);
$year = mysqli_real_escape_string($link, $_REQUEST['year']);
$faculty = mysqli_real_escape_string($link, $_REQUEST['faculty']);
$faculty_id = mysqli_real_escape_string($link, $_REQUEST['faculty_id']);
$campus = mysqli_real_escape_string($link, $_REQUEST['campus']);
$degree = mysqli_real_escape_string($link, $_REQUEST['degree']);

$p_code=$session.$year.$faculty.$faculty_id.$campus.$degree;

 $query="SELECT * FROM enrollment where p_code = '$p_code' ;";

//IU16M2BA001
$result = $conn->query($query) or die($conn->error.__LINE__);
$arr = array();
if($result->num_rows > 0) {
    
    $query_last="SELECT * FROM enrollment where p_code = '$p_code' ORDER BY `enrollment`.`rollno` DESC;";
    $result_last = $conn->query($query_last) or die($conn->error.__LINE__);
    $row_last = $result_last->fetch_assoc();
    $rollno = $row_last['rollno'];
     
    $lastpart = substr($rollno,8,3);
    $lastpart++;
    if($lastpart < 10){
        $lastpart = "00".$lastpart;
    }elseif($lastpart < 100){
        $lastpart = "0".$lastpart;
    }
    $R=$p_code.$lastpart;
    $sql = "INSERT INTO `enrollment` (`id`,`p_code`, `rollno`) VALUES (NULL,'$p_code', '$R')";
    $conn->query($sql);
       
 }else{
    $lastpart = "001";
    $R=$p_code.$lastpart;
    $sql = "INSERT INTO `enrollment` (`id`,`p_code`, `rollno`) VALUES (NULL,'$p_code', '$R')";
    $conn->query($sql);
 }


?>