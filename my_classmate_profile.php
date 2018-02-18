<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('my_classmates_link_profile.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					     <!-- breadcrumb -->
					<?php $query = fetchData($con,"select * from teacher_class_student
					LEFT JOIN teacher_class ON teacher_class.teacher_class_id = teacher_class_student.teacher_class_id 
					JOIN class ON class.class_id = teacher_class.class_id 
					JOIN subject ON subject.subject_id = teacher_class.subject_id
					where student_id = '$session_id'
					");
					$row = mysqli_fetch_array($query);
					$id = $row['teacher_class_student_id'];	
					?>
					     <ul class="breadcrumb">
							<li><a href="#"><?php echo $row['class_name']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><?php echo $row['subject_code']; ?></a> <span class="divider">/</span></li>
							<li><a href="#">School Year: <?php echo $row['school_year']; ?></a> <span class="divider">/</span></li>
							<li><a href="#">My Classmates</a> <span class="divider">/</span></li>
							<li><a href="#"><b>My Classmate Profile</b></a></li>
						</ul>
						
						 <!-- breadcrumb -->	
					     <ul class="breadcrumb">
								<?php
								$school_year_query = fetchData($con,"select * from school_year order by school_year DESC");
								$school_year_query_row = mysqli_fetch_array($school_year_query);
								$school_year = $school_year_query_row['school_year'];
								?>
								<li><a href="#"><b>Student Profile</b></a><span class="divider">/</span></li>
								<li><a href="#">School Year: <?php echo $school_year_query_row['school_year']; ?></a></li>
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  								<div class="alert alert-info"><i class="icon-user"></i>  Information</div>
								
								<?php
								$query = fetchData($con,"select * from student where student_id = '$session_id'");
								$row = mysqli_fetch_array($query);
								?>								
										
								    <form  method="post" id="change_password" class="form-horizontal">

								    	<div class="control-group">
											<label class="control-label" for="inputidnumber">Student Number</label>
											<div class="controls">
											<input type="text" id="" name="" maxlength="15"  placeholder="" readonly="" value="<?php echo $row['username']?>">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputfirstname">Firstname</label>
											<div class="controls">
											<input type="text" id="" name="" maxlength="15"  placeholder="" readonly="" value="<?php echo $row['firstname']?>">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputmiddlename">Midlle Name</label>
											<div class="controls">
											<input type="text" id="" name="" maxlength="15" placeholder="" readonly="" value="<?php echo $row['middlename']?>">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputlastname">Last Name</label>
											<div class="controls">
											<input type="text" id="" name="" maxlength="15" placeholder="" readonly="" value="<?php echo $row['lastname']?>">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputcontact">Contact Number</label>
											<div class="controls">
											<input type="tel" id="" name="contact_number" maxlength="11 placeholder="" required="" value="<?php echo $row['contact_number']?>">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputemail">Email</label>
											<div class="controls">
											<input type="email" id="" name="email" placeholder="" maxlength="20" required="" value="<?php echo $row['email']?>">
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputemail">Address</label>
											<div class="controls">
											<textarea name="address" form="usrform" placeholder="" required="" maxlength="100" > <?php echo $row['address']?> </textarea>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputemail">About Your Self</label>
											<div class="controls">
											<textarea name="my_self" form="usrform" placeholder="" required="" maxlength="100" > <?php echo $row['my_self']?> </textarea>
											</div>
										</div>
									</form>	


					 
                        
                    </div>


                </div>
			
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>