<?php

    include_once('config.php');

    if(isset($_POST['submit'])){
        $date = $_POST['date'];
        $time = $_POST['time'];
        
        $sql = "UPDATE bookings SET  WHERE id=:id";
    
        $prep = $conn->prepare($sql);
        
        $prep->bindParam(":date", $date);
        $prep->bindParam(":time", $time);
       

        $prep->execute();

        header("Location: client_bookings.php");
        
    
    }




?>