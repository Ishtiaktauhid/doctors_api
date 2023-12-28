<?php
include 'connection.php';
$appinputs = json_decode(file_get_contents('php://input'));
print_r("appinputs");
if($appinputs){
    $sql = "INSERT INTO appointment SET doctorname = '$appinputs->doctorname', patientname = '$appinputs->patientname', age = '$appinputs->age', problems = '$appinputs->problems', mobile = $appinputs->mobile, email = '$appinputs->email',  
    date = '$appinputs->date', time = '$appinputs->time' ";
    $query=$db->query($sql);
    if($query) {
        $data = ['status' => 1, 'message' => "Record successfully created"];
    } else {
        $data = ['status' => 0, 'message' => "Failed to create record."];
    }
}
echo json_encode($data);
