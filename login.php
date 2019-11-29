<?php
session_start(); //Starting the session
$ermsg ="";

if (isset($_POST["submit"])){
	if(empty($_POST['Email']) || empty($_POST['Password'])){
		$ermsg="Email or password invalid, try again";
	}
	else
	{
		$email=$_POST['Email'];
		$password=$_POST['Password'];

		//msqli_connect(), this function opens a new connection to the MySql server.
		$conn= mysqli_connect("localhost","root","whatever the database server is");
		//query to fetch information of registered users and finds the user.
		$query= "SELECT username, password from users where  Email=? AND Password=? LIMIT 1";
		mysql_close($conn); //closing connection

	}
}
?>