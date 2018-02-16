<?php include('1header.php'); ?>
<?php include('1session.php'); ?>
    <body>
		<?php include('1navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('1student_sidebar.php'); ?>
				<div class="span3" id="adduser">
				<?php include('1add_students.php'); ?>		   			
				</div>
                <div class="span6" id="">
                     <div class="row-fluid">
                        <!-- block -->
                        <div  id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Student List</div>
                            </div>
                            <div class="block-content collapse in">
								<div class="span12" id="studentTableDiv">
									<?php include('1student_table_reg.php'); ?>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
            </div>
		<?php include('1footer.php'); ?>
        </div>
		<?php include('1script.php'); ?>
    </body>

</html>