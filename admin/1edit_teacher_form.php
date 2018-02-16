   <div class="row-fluid">
       <a href="1teachers.php" class="btn btn-info"><i class="icon-plus-sign icon-large"></i> Add Teacher</a>
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Edit Teacher</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
								<!--
										<label>Photo:</label>
										<div class="control-group">
                                          <div class="controls">
                                               <input class="input-file uniform_on" id="fileInput" type="file" required>
                                          </div>
                                        </div>
									-->	
									<?php
									$query = mysql_query("select * from teacher where teacher_id = '$get_id' ")or die(mysql_error());
									$row = mysql_fetch_array($query);
									?>
										
										  <div class="control-group">
											<label>Department:</label>
                                          <div class="controls">
                                            <select name="department"  class="chzn-select"required>
											<?php
											$query_teacher = mysql_query("select * from teacher join  department")or die(mysql_error());
											$row_teacher = mysql_fetch_array($query_teacher);
											
											?>
                                             	<option value="<?php echo $row_teacher['department_id']; ?>">
												<?php echo $row_teacher['department_name']; ?>
												</option>
											<?php
											$department = mysql_query("select * from department order by department_name");
											while($department_row = mysql_fetch_array($department)){
											
											?>
											<option value="<?php echo $department_row['department_id']; ?>"><?php echo $department_row['department_name']; ?></option>
											<?php } ?>
                                            </select>
                                          </div>
                                        </div>

                                        <div class="control-group">
											<label>ID Number</label>
                                          <div class="controls">
                                            <input class="input focused" value="<?php echo $row['username']; ?>" name="username" id="focusedInput" type="text" placeholder = "">
                                          </div>
                                        </div>
										
										<div class="control-group">
											<label>Firstname</label>
                                          <div class="controls">
                                            <input class="input focused" value="<?php echo $row['firstname']; ?>" name="firstname" id="focusedInput" type="text" placeholder = "">
                                          </div>
                                        </div>
										
										<div class="control-group">
											<label>LastName</label>
                                          <div class="controls">
                                            <input class="input focused" value="<?php echo $row['lastname']; ?>"  name="lastname" id="focusedInput" type="text" placeholder = "">
                                          </div>
                                        </div>

                                        <div class="control-group">
											<label>Middle Name</label>
                                          <div class="controls">
                                            <input class="input focused" value="<?php echo $row['middlename']; ?>"  name="middlename" id="focusedInput" type="text" placeholder = "">
                                          </div>
                                        </div>

                                        <div class="control-group">
											<label>Sex</label>
                                          		<div class="controls">
                                            		<select  class="" name="sex" required>

                                            			<option><?php echo $row['sex']; ?></option>
                                              			<option>Male</option>
												        <option>Female</option>
                                            		</select>
                                          		</div>
                                        </div>
										
										
									
											<div class="control-group">
                                          <div class="controls">
												<button name="update" class="btn btn-success"><i class="icon-save icon-large"></i></button>

                                          </div>
                                        </div>
                                </form>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
					
					
				  		 <?php
                            if (isset($_POST['update'])) {
                       
                       			$department_id = $_POST['department'];
                       			$username = $_POST['username'];
                                $firstname = $_POST['firstname'];
                                $lastname = $_POST['lastname'];
                                $middlename = $_POST['middlename'];
                                $sex = $_POST['sex'];
								
								
								$query = mysql_query("select * from teacher where username = '$username' and lastname = '$lastname' ")or die(mysql_error());
								$count = mysql_num_rows($query);
								
								if ($count > 1){ ?>
								<script>
								alert('Data Already Exist');
								</script>
								<?php
								}else{
								
								mysql_query("update teacher set  username = '$username' , firstname = '$firstname' , lastname = '$lastname' , middlename= '$middlename' , sex = '$sex', department_id = '$department_id' where teacher_id = '$get_id' ")or die(mysql_error());	
								
						?>
								<script>
							 	window.location = "1teachers.php"; 
								</script>
								<?php   }} ?>
						 
						 