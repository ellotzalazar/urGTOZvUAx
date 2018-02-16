<?php
include('1dbcon.php');
include('1session.php');
mysql_query("update user_log set logout_Date = NOW() where user_id = '$session_id' ")or die(mysql_error());

 session_destroy();
header('location:http://localhost/web_portal/admin/index.php'); 
?>