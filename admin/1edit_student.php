<?php include('1header.php'); ?>
<?php include('1session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('1navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('1student_sidebar.php'); ?>
				<div class="span3" id="adduser">
				<?php include('1edit_students_form.php'); ?>		   			
				</div>
                <div class="span6" id="">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Student List</div>
                            </div>
                            <div class="block-content collapse in">
									<div class="span12">
									<form action="delete_student.php" method="post">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
									<a data-toggle="modal" href="#student_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i></a>
									<?php include('1modal_delete.php'); ?>
										<thead>
										  <tr>
												    <th></th>
													
													<th>Photo</th>
													<th>First Name</th>
													<th>Last Name</th>
													<th>ID Number</th>
											
													<th>Grade Yr & Section</th>
													<th></th>
										   </tr>
										</thead>
										<tbody>
											
                                        <?php
                                    	$query = mysql_query("select * from student LEFT JOIN class ON class.class_id = student.class_id ORDER BY student.student_id DESC") or die(mysql_error());
                                    	while ($row = mysql_fetch_array($query)) {
                                        $id = $row['student_id'];
                                        ?>

										<tr>
										<td width="30">
										<input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
										</td>
         								
         								<td width="40"><img class="img-circle" src="<?php echo $row['location']; ?>" height="40" width="40"></td> 
                                        <td><?php echo $row['firstname'] ?></td> 
                                        <td><?php echo $row['lastname'] ?></td> 
										<td><?php echo $row['username']; ?></td> 
								 
										<td width="100"><?php echo $row['class_name']; ?></td> 

										<td width="30"><a href="1edit_student.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil"></i> </a></td>
									 
										</tr>
                                   <?php } ?>    
                              
										</tbody>
									</table>
									</form>
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