<div class="navbar navbar-fixed-top navbar-inverse">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
					<span class="icon-bar"></span><span class="icon-bar"></span>
                </a>
                <a class="brand" href="dashboard_student.php">Welcome to: Bacoor Parochial school of St. Michael the Archangel, Inc. Web Portal</a>
					<div class="nav-collapse collapse">
						<ul class="nav pull-right">
							<?php $query= fetchData($con,"select * from student where student_id = '$session_id'");
									$row = $query->fetch_array();
							?>
							<li class="dropdown">
								<a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user icon-large">  </i><?php echo $row['firstname']." ".$row['middlename']." ".$row['lastname'];  ?> <i class="caret"></i></a>
									

									<ul class="dropdown-menu">
										<li><a tabindex="-1" href="change_password_student.php"><i class="icon-circle"></i> Change Password</a></li>
										<li class="divider"></li>
										<li><a tabindex="-1" href="#myModal_student" data-toggle="modal"><i class="icon-picture"></i> Change Avatar</a></li>
										<li class="divider"></li>
										<li><a tabindex="-1" href="student_profile.php"><i class="icon-user"></i> Profile</a></li>
										<li class="divider"></li>
										<li>
											<a tabindex="-1" href="logout.php"><i class="icon-signout"></i>&nbsp;Logout</a>
										</li>
									</ul>
							</li>
						</ul>
					</div>
            </div>
        </div>
</div>
<?php include('avatar_modal_student.php'); ?>	