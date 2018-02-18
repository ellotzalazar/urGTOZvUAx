<?php
include('admin/dbcon.php');
session_start();
$username = $_POST['username'];
$password = $_POST['password'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$class_id = $_POST['class_id'];

$query = fetchData($con,"select * from student where username='$username' and firstname='$firstname' and lastname='$lastname' and class_id = '$class_id'");
$row = mysqli_fetch_array($query);
$id = $row['student_id'];

$count = mysqli_num_rows($query);
if ($count > 0){
	fetchData($con,"update student set password = '".md5($password)."', status = 'Registered' where student_id = '$id'");
	$_SESSION['id']=$id;
	echo 'true';
}else{
echo 'false';
}
?>