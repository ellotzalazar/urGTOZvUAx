   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add Student</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form id="add_student" method="post">
								
								        <div class="control-group">
                                   
                                          <div class="controls">
                                          	<label>Grade/Yr./Sec:</label>
                                            <select  name="class_id" class="" required>
                                          	<option></option>
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
                                            	<input name="un" class="input focused" id="focusedInput" type="text" placeholder = "" required>
                                          	</div>
                                        </div>
										
										<div class="control-group">
											<label>Firstname</label>
                                          	<div class="controls">
                                            	<input  name="fn" class="input focused" id="focusedInput" type="text" placeholder = "" required >
                                          	</div>
                                        </div>
										
										<div class="control-group">
											<label>LastName</label>
                                          	<div class="controls">
                                            	<input  name="ln" class="input focused" id="focusedInput" type="text" placeholder = "" required>
                                          	</div>
                                        </div>

                                        <div class="control-group">
											<label>MiddleName</label>
                                          	<div class="controls">
                                            	<input  name="middlename" class="input focused" id="focusedInput" type="text" placeholder = "" required>
                                          	</div>
                                        </div>

                                        <div class="control-group">
											<label>Contact Number</label>
                                          	<div class="controls">
                                            	<input  name="contact_number" class="input focused" id="focusedInput" type="text" placeholder = "" required>
                                          	</div>
                                        </div>

                                        <div class="control-group">
											<label>Email</label>
                                          	<div class="controls">
                                            	<input  name="email" class="input focused" id="focusedInput" type="email" placeholder = "" required>
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
											<label>Guadian Name</label>
                                          	<div class="controls">
                                            	<input  name="guardian_name" class="input focused" id="focusedInput" type="text" placeholder = "" required>
                                          	</div>
                                        </div>

                                        <div class="control-group">
											<label>Guadian Contact Number</label>
                                          	<div class="controls">
                                            	<input  name="guardian_contact_number" class="input focused" id="focusedInput" type="text" placeholder = "" required>
                                          	</div>
                                        </div>

                                        <div class="control-group">
											<label class="control-label" for="inputemail">Address</label>
											<div class="controls">
											<textarea rows="5" cols="" name="address" form="usrform" placeholder="" required="" maxlength="100" > </textarea>
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
					
			<script>
			jQuery(document).ready(function($){
				$("#add_student").submit(function(e){
					e.preventDefault();
					var _this = $(e.target);
					var formData = $(this).serialize();
					$.ajax({
						type: "POST",
						url: "1save_student.php",
						data: formData,
						success: function(html){
							$.jGrowl("Student Successfully  Added", { header: 'Student Added' });
							$('#studentTableDiv').load('1student_table.php', function(response){
								$("#studentTableDiv").html(response);
								$('#example').dataTable( {
									"sDom": "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>",
									"sPaginationType": "bootstrap",
									"oLanguage": {
										"sLengthMenu": "_MENU_ records per page"
									}
								} );
								$(_this).find(":input").val('');
								$(_this).find('select option').attr('selected',false);
								$(_this).find('select option:first').attr('selected',true);
							});
						}
					});
				});
			});
			</script>		
