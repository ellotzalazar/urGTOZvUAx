<?php include('1header.php'); ?>
<?php include('1session.php'); ?>
    <body>
		<?php include('1navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('1teacher_sidebar.php'); ?>
				<div class="span3" id="adduser">
				<?php include('1add_teacher.php'); ?>		   			
				</div>
                <div class="span6" id="">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Teacher List</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  									<form action="delete_teacher.php" method="post">
  									
                                    <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
                                    <a data-toggle="modal" href="#teacher_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i></a>

                                    <div class="pull-right">
                                        <ul class="nav nav-pills">
                                        <li class="active">
                                            <a href="students.php">All</a>
                                        </li>
                                        <li class="">
                                            <a href="1unreg_teacher.php">Unregistered</a>
                                        </li>
                                        <li class="">
                                        <a href="1reg_teacher.php">Registered</a>
                                        </li>
                                        </ul>
                                    </div>






									<?php include('1modal_delete.php'); ?>
										<thead>
										    <tr>
                                    <th></th>
                                    <th>Photo</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Id Number</th>

                                    <th>Edit</th>
                                </tr>
										</thead>
										<tbody>
												 <?php
                                    $teacher_query = mysql_query("select * from teacher") or die(mysql_error());
                                    while ($row = mysql_fetch_array($teacher_query)) {
                                    $id = $row['teacher_id'];
                                    $teacher_stat = $row['teacher_stat'];
                                        ?>
									<tr>
										<td width="30">
										<input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
										</td>
                                    <td width="40"><img class="img-circle" src="<?php echo $row['location']; ?>" height="40" width="40"></td> 
                                    <td><?php echo $row['firstname']?></td> 
                                    <td><?php echo $row['lastname']?></td> 
                                    <td><?php echo $row['username']; ?></td> 
                               
									<td width="50"><a href="1edit_teacher.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil"></i></a></td>
									<?php if ($teacher_stat == 'Activated' ){ ?>
									<td width="120"><a href="1de_activate.php<?php echo '?id='.$id; ?>" class="btn btn-danger"><i class="icon-remove"></i> Deactivate</a></td>
									<?php }else{ ?>
									<td width="120"><a href="1edit_teacher.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-check"></i> Activated</a></td>				
									<?php } ?>
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