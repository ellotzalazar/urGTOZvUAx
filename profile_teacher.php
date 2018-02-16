<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('profile_teacher_sidebar.php'); ?>
                <div class="span6" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->
				
									
					     <ul class="breadcrumb">
						<?php
						$school_year_query = mysql_query("select * from school_year order by school_year DESC")or die(mysql_error());
						$school_year_query_row = mysql_fetch_array($school_year_query);
						$school_year = $school_year_query_row['school_year'];
						?>
							<li><a href="#">Teachers</a><span class="divider">/</span></li>
							<li><a href="#"><b>Profile</b></a></li>
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
								$query = mysql_query("select * from student where student_id = '$session_id'")or die(mysql_error());
								$row = mysql_fetch_array($query);
								?>								
										
								    <form  method="post" id="change_password" class="form-horizontal">

								    	<?php $query= mysql_query("select * from teacher where teacher_id = '$session_id'")or die(mysql_error());
										$row = mysql_fetch_array($query);
										?>

								    	<div class="control-group">
											<label class="control-label" for="inputidnumber">Teacher Number</label>
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
											<textarea name="my_self" form="usrform" placeholder="" required="" maxlength="100" > <?php echo $row['about_my_self']?> </textarea>
											</div>
										</div>







										<div class="control-group">
											<div class="controls">
											<button name="update" type="submit" class="btn btn-success"><i class="icon-save"></i> Update</button>
											</div>
										</div>

								</form>		

		 								
                        <!-- /block -->

                </div>
			
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>