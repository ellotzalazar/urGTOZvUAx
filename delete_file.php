<?php
include('admin/dbcon.php');
$id = $_POST['id'];
fetchData($con,"delete from files where file_id = '$id' ");
?>
