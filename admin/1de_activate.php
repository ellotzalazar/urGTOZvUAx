<?php
include('1dbcon.php');
$get_id = $_GET['id'];
mysql_query("update teacher set teacher_stat = 'Deactivated' where teacher_id = '$get_id'");
header('location:1teachers.php');
?>