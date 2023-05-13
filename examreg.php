<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "ravi";
$conn = mysqli_connect($servername, $username, $password, $database);
$course = $_POST['course'];
$registration_no = $_POST['registration_no'];
$semester = $_POST['semester'];
$password = $_POST['password'];

if($conn->connect_error)
{
    die('connection failed' . $conn->connect_error);
}
else{
$stmt = $conn->prepare("insert into examreg (course,registration_no,semester,password) 
values(?,?,?,?)");
$stmt->bind_param("ssss",$course, $registration_no, $semester, $password);
$stmt->execute();
echo"successfully";
$stmt->close();
$conn->close();
}

?>                                                                                                                                            