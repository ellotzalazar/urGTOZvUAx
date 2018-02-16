					<?php
						$school_year_query = fetchData($con,"select * from school_year order by school_year DESC");
						$school_year_query_row = $school_year_query->fetch_array();
						$school_year = $school_year_query_row['school_year'];
						?>
				
					<?php $query_yes = fetchData($con,"select * from teacher_notification
					LEFT JOIN notification_read_teacher on teacher_notification.teacher_notification_id =  notification_read_teacher.notification_id
					where teacher_id = '$session_id' 
					");
					$count_no = $query_yes->num_rows;
		            ?>
					<?php $query = fetchData($con,"select * from teacher_notification
					LEFT JOIN teacher_class on teacher_class.teacher_class_id = teacher_notification.teacher_class_id
					LEFT JOIN student on student.student_id = teacher_notification.student_id
					LEFT JOIN assignment on assignment.assignment_id = teacher_notification.assignment_id 
					LEFT JOIN class on teacher_class.class_id = class.class_id
					LEFT JOIN subject on teacher_class.subject_id = subject.subject_id
					where teacher_class.teacher_id = '$session_id' 
					");
					$count = $query->num_rows;
		            ?>
					
					<?php $not_read = $count -  $count_no; ?>