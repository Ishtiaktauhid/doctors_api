<?php
include 'connection.php';
$postdata = file_get_contents("php://input");

if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata,true);

	if($request['name'] != '' || $request['price']!= ''){
        $name = $request['name'];
        $price = $request['price'];
        $sql = "INSERT INTO product set name='$name',price=$price";
        if($db->query($sql)){
            http_response_code(201);
            $product = [
            'id' => mysqli_insert_id($db),'name' => $name,
            'price' => $price];
            echo json_encode($product);
        }
    }
}