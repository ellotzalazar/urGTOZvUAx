 <?php
 include('dbcon.php');
 include('session.php');
 $new_password  = $_POST['new_password'];
 fetchData($con,"update teacher set password = '$new_password' where teacher_id = '$session_id'");
 ?>