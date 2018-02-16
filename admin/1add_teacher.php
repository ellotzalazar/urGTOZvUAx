   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add Teacher</div>
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
										
										                    <div class="control-group">
											                   <label>Department:</label>
                                          <div class="controls">
                                            <select name="department"  class="" required>
                                             	<option></option>
                        											<?php
                        											$query = mysql_query("select * from department order by department_name");
                        											while($row = mysql_fetch_array($query)){
                        											
                        											?>
                        											<option value="<?php echo $row['department_id']; ?>"><?php echo $row['department_name']; ?></option>
                        											<?php } ?>
                                            </select>
                                          </div>
                                        </div>

                                        <div class="control-group">
                                        	<label>ID Number</label>
                                          <div class="controls">
                                            <input class="input focused" name="username" id="focusedInput" type="number" placeholder = "">
                                          </div>
                                        </div>
										
										                    <div class="control-group">
											                   <label>Firstname</label>
                                          <div class="controls">
                                            <input class="input focused" name="firstname" id="focusedInput" type="text" placeholder = "">
                                          </div>
                                        </div>
										
                    										<div class="control-group">
                    											<label>LastName</label>
                                          <div class="controls">
                                            <input class="input focused" name="lastname" id="focusedInput" type="text" placeholder = "">
                                          </div>
                                        </div>

                                        <div class="control-group">
                                        	<label>Middle Name</label>
                                          <div class="controls">
                                            <input class="input focused" name="middlename" id="focusedInput" type="text" placeholder = "">
                                          </div>
                                        </div>

                                        <div class="control-group">
											                   <label>Sex</label>
                                          <div class="controls">
                                            <select  class="" name="sex" required>
                                            	<option></option>
                                              <option>Male</option>
												                      <option>Female</option>
                                            </select>
                                          </div>
                                        </div>
										
										
									
											<div class="control-group">
                                          <div class="controls">
												<button name="save" class="btn btn-info"><i class="icon-plus-sign icon-large"></i></button>

                                          </div>
                                        </div>
                                </form>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
					
					
					    <?php
                            if (isset($_POST['save'])) {
                           
                                $firstname = $_POST['firstname'];
                                $lastname = $_POST['lastname'];
                                $middlename = $_POST['middlename'];
                                $department_id = $_POST['department'];
								                $username = $_POST['username'];
								                $sex = $_POST['sex'];
								
								$query = mysql_query("select * from teacher where username = '$username'")or die(mysql_error());
								$count = mysql_num_rows($query);
								
								if ($count > 0){ ?>
								<script>
								alert('Data Already Exist');
								</script>
								<?php
								}else{

                                mysql_query("insert into teacher (username,firstname,lastname,middlename,sex,location,department_id)
								values ('$username','$firstname','$lastname','$middlename','$sex','uploads/NO-IMAGE-AVAILABLE.jpg','$department_id')         
								") or die(mysql_error()); ?>
								<script>
							 	window.location = "1teachers.php"; 
								</script>
								<?php   }} ?>
						 
						 