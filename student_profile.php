<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>

<body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('change_password_sidebar_student.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->
						
						<div class="row-fluid">
                <div class="span9" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->	
					     <ul class="breadcrumb">
								<?php
								$school_year_query = fetchData($con,"select * from school_year order by school_year DESC");
								$school_year_query_row = $school_year_query->fetch_array();
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
  								<div class="alert alert-info"><i class="icon-user"></i> Your Information</div>
								<?php
								$query = fetchData($con,"select * from student where student_id = '$session_id'");
								$row = $query->fetch_array();
								?>								
										
								    <form  method="post" class="form-horizontal">

								    	<?php $query= fetchData($con,"select * from student where student_id = '$session_id'");
										$row = $query->fetch_array();
										?>

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
											<input type="tel" id="" name="contact_number" maxlength="11" placeholder="" required="" value="<?php echo $row['contact_number']?>">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputemail">Email</label>
											<div class="controls">
											<input type="email" id="" name="email" placeholder="" maxlength="20" required="" value="<?php echo $row['email']?>">
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputaddress">Address</label>
											<div class="controls">
											<textarea name="address"  placeholder="" required="" maxlength="100" > <?php echo $row['address']?> </textarea>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputemail">About Your Self</label>
											<div class="controls">
											<textarea name="my_self"  placeholder="" required="" maxlength="100" > <?php echo $row['my_self']?> </textarea>
											</div>
										</div>
										<input type="hidden" value="<?=$row['student_id']?>" name="id">






										<div class="control-group">
											<div class="controls">
											<button name="update" type="submit" class="btn btn-success"><i class="icon-save"></i> Update</button>
											</div>
										</div>

										<?php
				                            if (isset($_POST['update'])) {
				                               
				                                $get_id = $_POST['id'];
				                                $contact_number = $_POST['contact_number'];
				                                $email = $_POST['email'];
				                                $address = $_POST['address'];
				                                $my_self = $_POST['my_self'];
												

												executeUpdate($con,"update student set contact_number = '$contact_number' , email ='$email' , address= '$address' , my_self = '$my_self' where student_id = '$get_id' ");
												// echo ("update student set contact_number = '$contact' , email ='$email' , address= '$address' , my_self = '$myself' where student_id = '$get_id' ");
			
										?>
				 
												<script>
													window.location = "student_profile.php"; 
												</script>

				                       	<?php     }  ?>
				                       	
								
									</form>		

		 								
                        <!-- /block -->

                </div>
			
            </div>



		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>


