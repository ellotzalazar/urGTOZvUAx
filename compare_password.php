<?php
	if(md5($_POST['new']) == $_POST['old'])
	{
		echo $_POST['new'];
	}
	else
	{
		echo 'false';
	}
?>