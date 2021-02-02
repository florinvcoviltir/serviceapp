<?php

include "../config.php";

$id = $_GET['t'];

$sql = "DELETE FROM fise WHERE id = '$id'";

if(mysqli_query($link, $sql))
{
    mysqli_close($link);
	header("location:../service/fise-service.php");
    exit;
}
else
{
    echo "Nu se poate sterge";
}
?>