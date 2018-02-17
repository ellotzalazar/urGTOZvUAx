<?php
include('dbcon.php');
$get_id = $_GET['id'];
fetchData($con,"delete from event where event_id = '$get_id'");
?>
<script>
window.location = 'calendar_of_events.php';
</script>