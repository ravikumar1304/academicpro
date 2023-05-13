<?php
$username = $_POST['email'];
$password = $_POST['password'];

$conn =new mysqli("localhost","root","","ravi");
if($conn->connect_error)
{
    die('failed' . $conn->connect_error);
}
else{
$stmt = $conn->prepare("select * from register where email =?");
$stmt->bind_param("s",$username);
$stmt->execute();
$stmt_result=$stmt->get_result();
if($stmt_result->num_rows > 0)
{
    $data= $stmt_result->fetch_assoc();
if($data['password'] === $password){
    echo"successfully";
    header('location:stu.html');
}
else{
    echo"<h4>invalid</h4>";
}
}
else{
    echo"<h2>invalid entry</h2>";
}
}

?>                                                                                                                                            