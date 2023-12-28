<?php
include 'connection.php';
$testData = [];

$sql = "SELECT * FROM test";
$result=$db->query($sql);
while($row = $result->fetch_object()){
	$testData[]= $row;
}
	echo json_encode($testData);