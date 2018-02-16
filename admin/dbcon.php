<?php
// mysql_select_db('thewebportal',mysql_connect('localhost','root',''))or die(mysql_error());
$con = mysqli_connect('localhost','root','','thewebportal');


 if(!$con){
 	die('connection fail: ' .mysqli_connect_error());
 }
 
 function executeUpdate($conn,$query)
 {
	mysqli_query($conn,$query);
	mysqli_close($conn);
 }
 
 function fetchData($conn,$query = '')
 {
	$result = mysqli_query($conn,$query);
	

	return $result;
 }
?>