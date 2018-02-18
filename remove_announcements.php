<?php include('admin/dbcon.php'); ?>
<?php
$id = $_POST['id'];
fetchData($con,"delete from teacher_class_announcements where teacher_class_announcements_id = '$id'");
fetchData($con,"delete from teacher_class_announcements where teacher_class_announcements_id = '$id'");
?>

