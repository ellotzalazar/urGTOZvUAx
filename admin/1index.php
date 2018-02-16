<?php include('1header.php'); ?>
  <body id="login" background="images/backup/index.jpg">
  	<br><br><br><br>
    <div class="container">
    	<div class="pull-right">
			<form id="login_form" class="form-signin" method="post">
			        <h3 class="form-signin-heading"><i class="icon-lock"></i> Admin Login</h3>
			        <input type="text" class="input-block-level" id="usernmae" name="username" placeholder="Username" required>
			        <input type="password" class="input-block-level" id="password" name="password" placeholder="Password" required>
			        <button name="login" class="btn btn-info" type="submit"><i class="icon-signin icon-"></i> Sign in</button>		
			</form>
		</div>

	<script>
		jQuery(document).ready(function(){
		jQuery("#login_form").submit(function(e){
		e.preventDefault();
		var formData = jQuery(this).serialize();
		$.ajax({
		type: "POST",
		url: "1login.php",
		data: formData,
		success: function(html){
		if(html=='true')
			{
			$.jGrowl("Welcome to Welcome to: Bacoor Parochial school of St. Michael the Archangel, Inc. Web Portal", { header: 'Access Granted' 
		    });
				var delay = 2000;
					setTimeout(function()
						{ 
							window.location = '1dashboard.php'  }, delay);  
						}
						else
						{
						$.jGrowl("Please Check your username and Password", { header: 'Login Failed' });
						}
						}
						
					});
					return false;
				});
			});
	</script>

		


    </div> <!-- /container -->
<?php include('1script.php'); ?>
  </body>
</html>