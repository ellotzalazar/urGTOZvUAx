<?php include('admin/dbcon.php'); ?>
<?php
$id = $_POST['id'];
fetchData($con,"delete from message_sent where message_sent_id = '$id'");
?>

