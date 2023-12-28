<?php
    include '../connection.php';
    $data = [];

    $sql = 'SELECT appointment.*, our_dentist.name as dname from appointment join our_dentist on our_dentist.id = appointment.doctorname order by appointment.id ASC';

$result= $db->query($sql);
if($result->num_rows > 0){
    while($row = $result->fetch_object()){
        $data[]= $row;
    }
    echo json_encode(array("status" => 1, "data"=>$data));
}else{
    echo json_encode(array("staus" => 0, "data"=>""));
}