<?php
include('1dbcon.php');
        

               $un = $_POST['un'];
               $fn = $_POST['fn'];
               $ln = $_POST['ln'];
               $teacher_id = $_POST['teacher_id'];

               mysql_query("insert into teacher (username,firstname,lastname,location,class_id,status)
		values ('$un','$fn','$ln','uploads/NO-IMAGE-AVAILABLE.jpg','$teacher_id','Unregistered')                                    
		") or die(mysql_error()); ?>
<?php    ?>