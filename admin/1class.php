<?php include('1header.php'); ?>
<?php include('1session.php'); ?>
    <body>
		<?php include('1navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('1class_sidebar.php'); ?>
				<div class="span3" id="adduser">
				<?php include('1add_class.php'); ?>		   			
				</div>
                <div class="span6" id="">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Class List</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
									<form action="delete_class.php" method="post">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
										<a data-toggle="modal" href="#class_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i></a>
													<?php include('1modal_delete.php'); ?>
									<thead>
										  <tr>
													<th></th>
													<th>Grade And Section</th>
													<th></th>
										   </tr>
										</thead>
										<tbody>
										<?php
										$class_query = mysql_query("select * from class")or die(mysql_error());
										while($class_row = mysql_fetch_array($class_query)){
										$id = $class_row['class_id'];
										?>
												
										<tr>
											<td width="30">
											<input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
											</td>
											<td><?php echo $class_row['class_name']; ?></td>
											<td width="40"><a href="1edit_class.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil icon-large"></i> </a></td>
                                     
                               
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