<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('teacher_notification_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->
					     <ul class="breadcrumb">
						<?php
						$school_year_query = fetchData($con,"select * from school_year order by school_year DESC");
						$school_year_query_row = mysqli_fetch_array($school_year_query);
						$school_year = $school_year_query_row['school_year'];
						?>
							<li><a href="#"><b>My Class</b></a><span class="divider">/</span></li>
							<li><a href="#">School Year: <?php echo $school_year_query_row['school_year']; ?></a><span class="divider">/</span></li>
							<li><a href="#"><b>Notification</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">

							

  					<form id="domainTable" action="read_teacher.php" method="post">
						<?php  if($not_read == '0'){
								}else{  ?>
									<button id="delete"  class="btn btn-info" name="read"><i class="icon-check"></i> Read</button>
						
								<?php  }  ?>
				
					<?php $query = fetchData($con,"select * from teacher_notification
					LEFT JOIN teacher_class on teacher_class.teacher_class_id = teacher_notification.teacher_class_id
					LEFT JOIN student on student.student_id = teacher_notification.student_id
					LEFT JOIN assignment on assignment.assignment_id = teacher_notification.assignment_id 
					LEFT JOIN class on teacher_class.class_id = class.class_id
					LEFT JOIN subject on teacher_class.subject_id = subject.subject_id
					where teacher_class.teacher_id = '$session_id'  order by  teacher_notification.date_of_notification DESC
					");
					$count = mysqli_num_rows($query);
					while($row = mysqli_fetch_array($query)){
					$assignment_id = $row['assignment_id'];
					$get_id = $row['teacher_class_id'];
					$id = $row['teacher_notification_id'];
					
					
					$query_yes_read = fetchData($con,"select * from notification_read_teacher where notification_id = '$id' and teacher_id = '$session_id'");
					$read_row = mysqli_fetch_array($query_yes_read);
					
					$yes = $read_row['student_read']; 
				
					?>
									<div class="post"  id="del<?php echo $id; ?>">
										<?php  if ($yes == 'yes'){
										}else{ 
										?>
										  

										<input id=""  name="selector[]" type="checkbox" value="<?php echo $id; ?>">	
										<?php  } ?>	
											<strong><?php echo $row['firstname']." ".$row['lastname'];  ?></strong>
											<?php echo $row['notification']; ?> In <b><?php echo $row['fname']; ?></b>
											<a href="<?php echo $row['link']; ?><?php echo '?id='.$get_id; ?>&<?php echo 'post_id='.$assignment_id; ?>">
											<?php echo $row['class_name']; ?> 
											<?php echo $row['subject_code']; ?> 
									 
											</a>
										<hr>
										<div class="pull-right">
										<i class="icon-calendar"></i>&nbsp;<?php echo $row['date_of_notification']; ?> 
										</div>
											
									
											
											</div>
					<?php
					}
					?>
					<div>
                        	<table cellpadding="0" cellspacing="0" border="1" class="table" id="">
									
									<?php include('move_to_school_year.php'); ?>
										<thead>
										        <tr>
												<th>Event</th>
												<th>Date</th>
												
												</tr>
												
										</thead>
										<tbody>
											
                             
									<?php $event_query = fetchData($con,"select * from event  ");
										while($event_row = mysqli_fetch_array($event_query)){
										$id  = $event_row['event_id'];
									?>                              
										<tr id="del<?php echo $id; ?>">
									
										 <td><?php echo $event_row['event_title']; ?></td>
                                         <td><?php  echo $event_row['date_start']; ?>
											<br>
											 <?php  echo $event_row['date_end']; ?>                               
										</tr>
                         
						 <?php } ?>
                    </div>

					
					</form>
						
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                        <!-- /block -->
						
                     <!-- /block -->
                    </div>


                </div>
			
            </div>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>