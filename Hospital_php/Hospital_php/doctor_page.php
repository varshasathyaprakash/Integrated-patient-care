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
  $doctor_id=$_POST["doctor-id"];
  $p_no=$_POST["p-no"];
  $dept_no=$_POST["dept-no"];
  $dept_name=$_POST["dept-name"];


$sql="INSERT INTO `doctor`(`name`, `doctor_id`, `p_no`, `dept_no`, `dept_name`) VALUES ('$name','$doctor_id','$p_no','$dept_no','$dept_name')";
  
if($conn->query($sql) ==TRUE){
    echo "Doctor Appointed Successfully";
  }
  else{
    echo "Error:". $sql ."<br>" .$conn->error;
  }
}
$conn->close();

?>