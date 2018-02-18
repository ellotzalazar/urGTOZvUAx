<?php
	require 'dbcon.php';
	require 'session.php';
	if (isset($_FILES["file"]) && !empty($_FILES["file"]) && $_FILES["file"]['size'] != 0) {
	
			$extension = pathinfo($_FILES["file"]["name"],PATHINFO_EXTENSION);
			$name = 'Attendance'. time() . '.' .  $extension; //$name . '.' . , PATHINFO_EXTENSION);
			$allowedExts = array('xlsx','xls');
			$temp = explode(".", $_FILES["file"]["name"]);
			if (in_array($extension, $allowedExts)) {
				if ($_FILES["file"]["error"] > 0) {
					echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
				} else {
					move_uploaded_file($_FILES["file"]["tmp_name"], 'files/' . $name);
				}
			} else {
				echo "Invalid file" . $_FILES["file"]["size"];
			}
		}
		
		$path = 'files/'.$name;
		require_once 'phpexcel/excel.php';
		$data = MyExcel::getData($path);
		if(!empty($data))
		{
			$trans_date = '';
			
			if(!empty($data[0]))
			{
				foreach($data[0] as $k => $e)
				{
					$date = date('Y-m-d H:i:s');
					if($k == 0)
					{
						if(strtolower($e[0]) == "teacher's attendance sheet")
						{
							$type = 'teacher';
						}
						else
						{
							$type = 'student';
						}
					}
					if($k == 1)
					{
						$trans_date = date('Y-m-d',strtotime($e[1]));
					}
						
					if($e[0] != '' && $k > 4)
					{
						
						$select_query = "SELECT * FROM teacher WHERE username = '".$e[0]."';";
						$info = fetchData($con,$select_query);
						$teacher_info = $info->fetch_array();
						if($info->num_rows > 0)
						{
							$check = fetchData($con,"SELECT * FROM attendance WHERE reference_id = {$teacher_info['teacher_id']} AND type = '$type' AND transaction_date = '$trans_date'");
							if($check->num_rows == 0)
							{
								$query = "INSERT INTO attendance(reference_id,type,transaction_date,time_in,time_out,uploaded_by,created_at)
											VALUES({$teacher_info['teacher_id']},'$type','$trans_date','{$e[1]}','{$e[2]}',{$session_id},'{$date}');
										";
										
								executeInsert($con,$query);
							}
						}
					}
				}
			}
		}
		unlink($path);
?>
<script>
	alert('Success');
	window.location = 'attendance.php';
</script>