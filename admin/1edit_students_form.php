   <div class="row-fluid">
       <a href="1students.php" class="btn btn-info"><i class="icon-plus-sign icon-large"></i> Add Student</a>
                <!-- block -->
                  <div class="block">
                      <div class="navbar navbar-inner block-header">
                          <div class="muted pull-left">Edit Student</div>
                      </div>
                  <div class="block-content collapse in">
							
              <?php
							$query = mysql_query("select * from student LEFT JOIN class ON class.class_id = student.class_id where student_id = '$get_id'")or die(mysql_error());
							$row = mysql_fetch_array($query);
							?>
              <div class="span12">
								<form method="post">
								
								    <div class="control-group">
                                   
                        <div class="controls">
                          <label class="control-label" for="">Grade Yr. & Section</label>
                            <select  name="cys" class="" required>    
                                <option value="<?php echo $row['class_id']; ?>"><?php echo $row['class_name']; ?></option>
            											<?php
            											$cys_query = mysql_query("select * from class order by class_name");
            											while($cys_row = mysql_fetch_array($cys_query)){
            											
            											?>
            											<option value="<?php echo $cys_row['class_id']; ?>"><?php echo $cys_row['class_name']; ?></option>
            											<?php } ?>
                                            </select>
                                          </div>
                                        </div>
								
										                    <div class="control-group">
                                          <label>ID Number</label>
                                          <div class="controls">
                                            <input name="un" value="<?php echo $row['username']; ?>" class="input focused" id="focusedInput" type="text" placeholder = "ID Number" required>
                                          </div>
                                        </div>
										
										                    <div class="control-group">
                                          <label>Firstname</label>
                                          <div class="controls">
                                            <input name="fn"  value="<?php echo $row['firstname']; ?>"  class="input focused" id="focusedInput" type="text" placeholder = "Firstname" required>
                                          </div>
                                        </div>
										
										                    <div class="control-group">
                                          <label>Lastname</label>
                                          <div class="controls">
                                            <input  name="ln"  value="<?php echo $row['lastname']; ?>" class="input focused" id="focusedInput" type="text" placeholder = "Lastname" required>
                                          </div>
                                        </div>

                                        <div class="control-group">
                                          <label>Middlename</label>
                                          <div class="controls">
                                            <input  name="middlename"  value="<?php echo $row['middlename']; ?>" class="input focused" id="focusedInput" type="text" placeholder = "" required>
                                          </div>
                                        </div>

                                        <div class="control-group">
                                          <label>Contact Number</label>
                                            <div class="controls">
                                              <input  name="contact_number" value="<?php echo $row['contact_number']; ?>" class="input focused" id="focusedInput" type="text" placeholder = "" required>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                          <label>Email</label>
                                            <div class="controls">
                                              <input  name="email" value="<?php echo $row['email']; ?>" class="input focused" id="focusedInput" type="email" placeholder = "" required>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                          <label>Sex</label>
                                              <div class="controls">
                                                <select  class="" name="sex" required>
                                                  <option> <?php echo $row['sex']; ?></option>
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                </select>
                                              </div>
                                        </div>

                                        <div class="control-group">
                                          <label>Guadian Name</label>
                                            <div class="controls">
                                              <input  name="guardian_name" value="<?php echo $row['guardian_name']; ?>" class="input focused" id="focusedInput" type="text" placeholder = "" required>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                          <label>Guadian Contact Number</label>
                                            <div class="controls">
                                              <input  name="guardian_contact_number" value="<?php echo $row['guardian_contact_number']; ?>" class="input focused" id="focusedInput" type="text" placeholder = "" required>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                          <label class="control-label" for="inputemail">Address</label>
                                          <div class="controls">
                                            <textarea rows="5" cols="" name="address" form="usrform" placeholder="" required="" maxlength="100" > <?php echo $row['address']; ?> </textarea>
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
                               
                                $un = $_POST['un'];
                                $fn = $_POST['fn'];
                                $ln = $_POST['ln'];
                                $cys = $_POST['cys'];
                      

								mysql_query("update student set username = '$un' , firstname ='$fn' , lastname = '$ln' , class_id = '$cys' where student_id = '$get_id' ")or die(mysql_error());

								?>
 
								<script>
								window.location = "1students.php"; 
								</script>

                       <?php     }  ?>
	