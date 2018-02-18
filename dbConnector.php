<?php

class DbConnector {

var $theQuery;
var $link;

function DbConnector(){

        // Get the main settings from the array we just loaded
        $host = 'localhost';
        $db = 'thewebportal';
        $user = 'root';
        $pass = '';

        // Connect to the database
        // $this->link = mysql_connect($host, $user, $pass);
        // mysql_select_db($db);
        // register_shutdown_function(array(&$this, 'close'));
        $this->link = mysqli_connect($host,$user,$pass,$db);
    }
	
  //*** Function: query, Purpose: Execute a database query ***
    function query($query) {

        $this->theQuery = $query;

        return mysqli_query($this->link,$query);
        // return mysql_query($query, $this->link);

    }

    //*** Function: fetchArray, Purpose: Get array of query results ***
    function fetchArray($result) {

        // return mysql_fetch_array($result);
        return mysqli_fetch_array($result);

    }

    //*** Function: close, Purpose: Close the connection ***
    function close() {

        mysqli_close($this->link);

    }
	
}

?>