<?php
$host= "localhost";
$username="root";
$password="";
$dbname="hospital";
$conn=new mysqli($host,$username,$password,$dbname);

if($conn->connect_error){
  die("Connection Failed:" . $conn->connect_error);
}

if($_SERVER["REQUEST_METHOD"]=="POST"){
  $name=$_POST["name"];
  $nurse_id=$_POST["nurse-id"];
  $room_no=$_POST["room-no"];
  $p_no=$_POST["patient-no"];
 

$sql="INSERT INTO `nurse`(`name`, `nurse_id`, `room_no`, `p_no`) VALUES ('$name','$nurse_id','$room_no','$p_no')";
  
if($conn->query($sql) ==TRUE){
    echo "<center>Nurse appointed Successfully</center>";
  }
  else{
    echo "Error:". $sql ."<br>" .$conn->error;
  }
}
$conn->close();

?>