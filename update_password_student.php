 <?php
 include('dbcon.php');
 include('session.php');
 $new_password  = md5($_POST['new_password']);
 executeUpdate($con,"update student set password = '$new_password' where student_id = '$session_id'");
 ?>