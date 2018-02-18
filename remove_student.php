<?php
include('admin/dbcon.php');
$id = $_POST['id'];
fetchData($con,"delete from teacher_class_student where teacher_class_student_id = '$id'");
?>

