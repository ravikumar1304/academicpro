<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "ravi";
$conn = mysqli_connect($servername, $username, $password, $database);
$name = $_POST['name'];
$father_name = $_POST['father_name'];
$mother_name = $_POST['mother_name'];
$dob = $_POST['dob'];
$branch = $_POST['branch'];
$semester = $_POST['semester'];
$mobile = $_POST['mobile'];
$email = $_POST['email'];
$password = $_POST['password'];

if($conn->connect_error)
{
    die('connection failed' . $conn->connect_error);
}
else{
$stmt = $conn->prepare("insert into register (name, father_name, mother_name, dob, branch, semester, mobile, email, password) 
values(?,?,?,?,?,?,?,?,?)");
$stmt->bind_param("sssssssss", $name, $father_name, $mother_name, $dob, $branch, $semester, $mobile, $email, $password);
$stmt->execute();
echo"successfully";
$stmt->close();
$conn->close();
}
?>                                                                                                                                            