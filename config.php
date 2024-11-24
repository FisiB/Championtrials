<?php

    session_start();

    $user = "root";
    $pass = "";
    $dbname = "mms";
    $host = "localhost";

    try{
        $conn = new PDO("mysql:host=$host; dbname=$dbname", $user, $pass);

    }

    catch(Exception $e){
        echo "Se ke lidh mire";
    }



?>