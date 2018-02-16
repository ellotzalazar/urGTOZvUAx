<?php  include('1header.php'); ?>
<?php  include('1session.php'); ?>
    <body>
		<?php include('1navbar.php') ?>
        <div class="container-fluid">
            <div class="row-fluid">
					<?php include('1sidebar_calendar.php'); ?>
                
                <!--/span-->
                <div class="span9" id="content">
								        <div id="block_bg" class="block">
                
								<div class="block-content collapse in">
										<div class="span8">
							<!-- block -->
										<div class="navbar navbar-inner block-header">
											<div class="muted pull-left">Calendar</div>
										</div>
															<div id='calendar'></div>		
										</div>
										
										<div class="span4">
												<?php include('1add_class_event.php'); ?>
										</div>	
							<!-- block -->
						
										</div>
                                </div>		
                </div>
            </div>
    
         <?php include('1footer.php'); ?>
        </div>
	<?php include('1script.php'); ?>
	<?php include('1admin_calendar_script.php'); ?>
    </body>

</html>