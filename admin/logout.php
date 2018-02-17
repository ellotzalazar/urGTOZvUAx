<?php
include('dbcon.php');
include('session.php');
fetchData($con,"update user_log set logout_Date = NOW() where user_id = '$session_id' ");

 session_destroy();
header('location:index.php'); 
?>