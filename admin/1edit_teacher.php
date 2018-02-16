<?php include('1header.php'); ?>
<?php include('1session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('1navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('1teacher_sidebar.php'); ?>
				<div class="span3" id="adduser">
				<?php include('1edit_teacher_form.php'); ?>		   			
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
									<?php include('1modal_delete.php'); ?>
										<thead>
										    <tr>
                                                <th></th>
                                                <th>Photo</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>ID Number</th>
                                                <th></th>
                                            </tr>
										</thead>
										<tbody>
											<?php
                                                $teacher_query = mysql_query("select * from teacher") or die(mysql_error());
                                                while ($row = mysql_fetch_array($teacher_query)) {
                                                $id = $row['teacher_id'];
                                                    ?>
            									<tr>
            										<td width="30">
            										<input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
            										</td>
                                                <td width="40"><img class="img-rounded" src="<?php echo $row['location']; ?>" height="50" width="50"></td> 
                                                <td><?php echo $row['firstname']?></td> 
                                                <td><?php echo $row['lastname']?></td> 
                                                <td><?php echo $row['username']; ?></td> 
                                           
            									<td width="30"><a href="1edit_teacher.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil"></i></a></td>
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