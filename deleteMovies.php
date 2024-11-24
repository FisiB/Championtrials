<?php

    include_once("config.php");

    $id = $_GET['id'];

    $sql = "DELETE FROM movies WHERE id=:id";

    $deleteMovies = $conn->prepare($sql);

    $deleteMovies->bindParam(":id", $id);

    $deleteMovies->execute();

    header("Location: list_movies.php");







?>