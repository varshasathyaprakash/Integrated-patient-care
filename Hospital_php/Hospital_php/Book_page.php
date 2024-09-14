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
  $firstname=$_POST["firstname"];
  $lastname=$_POST["lastname"];
  $number=$_POST["number"];
  $age=$_POST["age"];
  $disease=$_POST["disease"];
  $gender=$_POST["gender"];
  $room_no=$_POST["room-no"];
  $doctor_name=$_POST["doctor-name"];
  $admit_date=$_POST["admit-date"];
  $discharge_date=$_POST["discharge-date"];



$sql="INSERT INTO `patient`(`first_name`, `last_name`, `p_no`, `age`, `disease`, `gender`, `room_no`, `doct_name`, `admit_date`, `discharge_date`) VALUES ('$firstname','$lastname','$number','$age','$disease','$gender','$room_no','$doctor_name','$admit_date','$discharge_date')";
  
if($conn->query($sql) ==TRUE){
    echo "<h1><center>Booking Successfully</center></h1>";
  }
  else{
    echo "Error:". $sql ."<br>" .$conn->error;
  }
}
$conn->close();

?>