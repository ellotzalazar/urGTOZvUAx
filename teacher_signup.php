<?php
include('admin/dbcon.php');
session_start();
$username = $_POST['username'];
$password = $_POST['password'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$department_id = $_POST['department_id'];

$query = fetchData($con,"select * from teacher where  firstname='$firstname' and lastname='$lastname' and username='$username' and department_id = '$department_id'");
$row = mysqli_fetch_array($query);
$id = $row['teacher_id'];

$count = mysqli_num_rows($query);
if ($count > 0){
	fetchData($con,"update teacher set password = '".md5($password)."', teacher_status = 'Registered' where teacher_id = '$id'");
	$_SESSION['id']=$id;
	echo 'true';
}else{
	echo 'false';
}
?>