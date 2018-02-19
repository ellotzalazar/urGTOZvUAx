<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('department_sidebar.php'); ?>
				<div class="span3" id="adduser">
					<?php include('attendance_form.php'); ?>		   			
				</div>
				<style>
					.date-filter
					{
						opacity:0;
						width:0;
						pointer-events: none;
					}
				</style>
                <div class="span6" id="">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Attendance List</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
									Download Template : 
									<a class="btn btn-primary" href="templates/teacher_template.xlsx" target="_blank" download>For Teacher</a>
									<a class="btn btn-success"  href="templates/student_template.xlsx" target="_blank" download>For Student</a>
                                </div>
								
								<div class="clearfix"></div>
								<div class="span12">
									<hr/>
									<?php $date = isset($_GET['date']) ? date('m/d/Y',strtotime($_GET['date'])) : date('m/d/Y')?>
									<label>
										Attendance List for :<?=$date?>
										<a type="btn btn-success"><i class="icon-calendar"></i></a>
										<input type="text" name="date" class="date-filter datepicker" value="<?=$date?>"> 
									</label>
									
									<table class="table table-bordered table-striped table-condensed">
										<thead>
											<tr>
												<th>[ID] Name</th>
												<th>Type</th>
												<th>Time In</th>
												<th>Time Out</th>
											</tr>
										</thead>
										<tbody>
											<?php
												$query = "SELECT att.*,
																(CASE  
																	WHEN att.type = 'teacher'
																	THEN (SELECT CONCAT('<b>[',username,']</b> ',lastname,',',firstname) FROM teacher WHERE teacher_id = att.reference_id)
																ELSE
																	(SELECT CONCAT('<b>[',username,']</b> ',lastname,',',firstname) FROM student WHERE student_id = att.reference_id)
																END) name
																	
																	FROM attendance  att
																
																WHERE
																	att.transaction_date = '". date('Y-m-d',strtotime($date)) ."'
															";
												$data = fetchData($con,$query);
												if($data->num_rows > 0)
												{
													while($row = $data->fetch_array())
													{
											?>
														<tr>
															<td><?=$row['name']?></td>
															<td><?=ucwords($row['type'])?></td>
															<td><?=date('h:i a',strtotime($row['time_in']))?></td>
															<td><?=date('h:i a',strtotime($row['time_out']))?></td>
														</tr>
											<?php
													}
												}
												else
												{
											?>
													<tr>
														<td colspan="4"> No result found on this date. </td>
													</tr>
											<?php 
												}
											?>
										</tbody>
									</table>
								</div>
                            </div>
                        </div>
						
                        <!-- /block -->
                    </div>


                </div>
            </div>
			
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
		
		<script>
			$(function(){
				$('.date-filter').on('blur',function(){
					var that = $(this);
					window.location = 'attendance.php?date='+that.val();
				});
			});
		</script>
    </body>

</html>