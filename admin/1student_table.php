	<?php include('1dbcon.php'); ?>
	<form action="1delete_student.php" method="post">
	<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
	<a data-toggle="modal" href="#student_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i></a>
	<div class="pull-right">
			    <ul class="nav nav-pills">
				<li class="active">
					<a href="students.php">All</a>
				</li>
				<li class="">
					<a href="1unreg_students.php">Unregistered</a>
				</li>
				<li class="">
				<a href="1reg_students.php">Registered</a>
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
					<th>ID Number</th>
			
					<th>Course Yr & Section</th>
					<th></th>
		</tr>
		</thead>
		<tbody>
			
		<?php
	$query = mysql_query("select * from student LEFT JOIN class ON student.class_id = class.class_id ORDER BY student.student_id DESC") or die(mysql_error());
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