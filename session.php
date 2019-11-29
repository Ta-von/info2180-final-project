<?php
//mysqli_connect() pens a new connection to the MySql server.
$conn = mysqli_connect("localhost", "root", "schema.sql");
session_start();// Starting Session

//Storing session
$user_check= $_SESSION['login_user'];

//query to get the comlete information of the current user
$query="SELECT Email from user where Email= '$user_check'";
$ses_sql=mysqli_query($conn,$query);
$row=mysqli_fetch_assoc($ses_sql);
$login_session=$row['Email'];
?>
