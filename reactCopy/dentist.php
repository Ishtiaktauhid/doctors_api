<?php
include 'connection.php';
$dentistData = [];

$sql = "SELECT * FROM our_dentist";
$result=$db->query($sql);
while($row = $result->fetch_object()){
	$dentistData[]= $row;
}
	echo json_encode($dentistData);