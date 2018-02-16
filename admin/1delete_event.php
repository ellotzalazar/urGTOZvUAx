<?php
include('1dbcon.php');
$get_id = $_GET['id'];
mysql_query("delete from event where event_id = '$get_id'")or die(mysql_error());
?>
<script>
window.location = '1calendar_of_events.php';
</script>