<<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "ravi";
$conn = mysqli_connect($servername, $username, $password, $database);
$username = $_POST['username'];
$password = $_POST['password'];
$cpassword = $_POST['cpassword'];

if($conn->connect_error)
{
    die('connection failed' . $conn->connect_error);
}
else{
$stmt = $conn->prepare("insert into details(username,password,cpassword) 
values(?,?,?)");
$stmt->bind_param("sss",$username, $password, $cpassword);
$stmt->execute();
echo"successfully";
$stmt->close();
$conn->close();
}

?>

    