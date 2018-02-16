<?php
		include('admin/dbcon.php');
		session_start();
		$username = $_POST['username'];
		$password = $_POST['password'];
		
		/* student */
			$query = "SELECT * FROM student WHERE username='$username' AND password='".md5($password)."'";
			$result = fetchData($con,$query);
			$row = $result->fetch_array();
			$num_row = $result->num_rows;
			
		/* teacher */
			$query_teacher = "SELECT * FROM teacher WHERE username='$username' AND password='".md5($password)."'";
			$result = fetchData($con,$query_teacher);
			$num_row_teacher = $result->num_rows;
			$row_teahcer = $result->fetch_array();
			
		
		if( $num_row > 0 ) 
		{ 
			$_SESSION['id']=$row['student_id'];
			echo 'true_student';	
		}
		else if ($num_row_teacher > 0)
		{
			$_SESSION['id']=$row_teahcer['teacher_id'];
			echo 'true';
		}else
		{ 
			echo 'false';
		}	
				
		?>