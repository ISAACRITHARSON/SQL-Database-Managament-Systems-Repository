<?php
$name = $_POST['name'];
$regno = $_POST['regno'];
$email = $_POST['email'];
$con = new mysqli('localhost', 'root', '', 'college');
$sql = "insert into students values ('$name', $regno, '$email')";
$status = $con->query($sql);
if ($status)
echo "Data Saved Successfully";
else
echo $con->error;
?>
