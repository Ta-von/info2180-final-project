<?php
session_start();
if(Session_destroy()) //Destroy al open sessions
{header("Location: login.html"); //redirecting to home page
}
?>