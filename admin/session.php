<?php
 session_start(); 
//Check whether the session variable SESS_MEMBER_ID is present or not
if (!isset($_SESSION['id']) || (trim($_SESSION['id']) == '')) { ?>
	<script>
	window.location = "index.php";
	</script>
<?php
		exit;
	}

	$session_id=$_SESSION['id'];

	$query = "select * from users where user_id = '$session_id'";
	$user = fetchData($con, $query);
	$user_username = $user->fetch_array()['username'];
?>