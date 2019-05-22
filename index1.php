<?php

$link = mysqli_connect("localhost", "root", "", "MyDb");
 

if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 

$session = mysqli_real_escape_string($link, $_REQUEST['session']);
$year = mysqli_real_escape_string($link, $_REQUEST['year']);
$faculty = mysqli_real_escape_string($link, $_REQUEST['faculty']);
$faculty_id = mysqli_real_escape_string($link, $_REQUEST['faculty_id']);
$campus = mysqli_real_escape_string($link, $_REQUEST['campus']);
$degree = mysqli_real_escape_string($link, $_REQUEST['degree']);

 $sql = "INSERT INTO enrollment (session,year,faculty,faculty_id,campus,degree) VALUES ('$session','$year','$faculty','$faculty_id','$campus','$degree')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 

mysqli_close($link);
?>