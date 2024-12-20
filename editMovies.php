<?php

    include_once('config.php');

    if(isset($_POST['submit'])){
        $id = $_POST['id'];
        $movie_name = $_POST['movie_name'];
        $movie_desc = $_POST['movie_desc'];
        $movie_quality = $_POST['movie_quality'];
        $movie_rating = $_POST['movie_rating'];
        $movie_image = $_POST['movie_image'];
        $category = $_POST['category'];
        
        $sql = "UPDATE movies SET movie_name=:movie_name, movie_desc=:movie_desc,movie_quality=:movie_quality, movie_rating=:movie_rating, movie_image=:movie_image, category=:category WHERE id=:id";
    
        $prep = $conn->prepare($sql);
        
        $prep->bindParam(":id", $id);
        $prep->bindParam(":movie_name", $movie_name);
        $prep->bindParam(":movie_desc", $movie_desc);
        $prep->bindParam(":movie_quality", $movie_quality);
        $prep->bindParam(":movie_rating", $movie_rating);
        $prep->bindParam(":movie_image", $movie_image);
        $prep->bindParam(":category", $category);
        $prep->execute();

        header("Location: list_movies.php");
        
    
    }




?>