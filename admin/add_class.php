   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add Grade and Section</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
										<div class="control-group">
                                          <div class="controls">
                                            <input name="class_name" class="input focused" id="focusedInput" type="text" placeholder = "Class Name" required>
                                          </div>
                                          <div class="controls">
                                            <input name="adviser_name" class="" id="" type="text" placeholder = "Adviser Name" required>
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
                    </div><?php
if (isset($_POST['save'])){
$class_name = $_POST['class_name'];

$query = "select * from class where class_name  =  '$class_name' ";
$data = fetchData($con, $query);

$count = mysqli_num_rows($data);

if ($count > 0){ ?>
<script>
alert('Date Already Exist');
</script>
<?php
}else{
$query = "insert into class (class_name) values('$class_name')";
$data = fetchData($con, $query);
?>
<script>
window.location = "class.php";
</script>
<?php
}
}
?>