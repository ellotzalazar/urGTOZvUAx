<?php
include('1dbcon.php');
        

               $un = $_POST['un'];
               $fn = $_POST['fn'];
               $ln = $_POST['ln'];
               $middlename = $_POST['middlename'];
               $contact_number= $_POST['contact_number'];
               $email = $_POST['email'];
               $sex = $_POST['sex'];
               $guardian_name = $_POST['guardian_name'];
               $guardian_contact_number = $_POST['guardian_contact_number'];
               $address = $_POST['address'];

               $class_id = $_POST['class_id'];

               mysql_query("insert into student (username,firstname,lastname,middlename,class_id,status,contact_number,email,sex,guardian_name,guardian_contact_number,address)
		values ('$un','$fn','$ln','middlename','contact_number','email','sex','guardian_name','guardian_contact_number','address','uploads/NO-IMAGE-AVAILABLE.jpg','$class_id','Unregistered')                                    
		") or die(mysql_error()); ?>
<?php    ?>