
	

<form method="post" action="import_attendance.php" enctype="multipart/form-data">
   <div class="row-fluid">
                        <!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">Import Attendance</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
				<form method="post">
						<div class="control-group">
						  <div class="controls">
							<input  class="input "  type="file" name="file" required>
						  </div>
						</div>
						<div class="control-group">
						  <div class="controls">
							<button name="save" class="btn btn-info"><i class="icon-upload icon-large"></i> Import</button>
						  </div>
						</div>
				</form>
				</div>
			</div>
		</div>
		<!-- /block -->
	</div>
</form>