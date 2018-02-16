<?php

		include('dbcon.php');
		session_start();

		$username = $_POST['username'];
		$password = $_POST['password'];
		
		/* admin */
			$query = "SELECT * FROM users WHERE username='$username' AND password='".md5($password)."'";
			// $result = mysql_query($query)or die(mysql_error());
			// $row = mysql_fetch_array($result);
			// $num_row = mysql_num_rows($result);
		
			$user = fetchData($con, $query);

			$num_row = $user->num_rows;

		/* superadmin */
			$query_super = "SELECT * FROM super_user WHERE username='$username' AND password='".md5($password)."'";
			// $query_super = mysql_query("SELECT * FROM super_user WHERE username='$username' AND password='".md5($password)."'")or die(mysql_error());
			// $result = mysql_query($query)or die(mysql_error());
			// $num_row_super = mysql_num_rows($query_super);
			// $row_super = mysql_fetch_array($query_super);
		
			$user_user = fetchData($con, $query);

			$num_row_super = $user_user->num_rows;
			
		if( $num_row > 0 ) 
		{ 
			// $_SESSION['id']=$row['user_id'];
			$_SESSION['id']=$user->fetch_array()['user_id'];
			echo 'admin';	
		}

		else if ($num_row_super > 0)
		{
			$_SESSION['id']=$user->fetch_array()['user_id'];
			echo 'superadmin';
		}
		else
		{ 
			echo 'false';
		}
		