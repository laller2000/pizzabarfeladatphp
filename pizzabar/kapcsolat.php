<?php
$servername = "localhost";
$username = "root";
$password = "";
$database="pizzabar";

// Create connection
$conn = new mysqli($servername, $username, $password,$database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
  exit();
}
$conn->set_charset("UTF-8");
echo "Connected successfully";
?>