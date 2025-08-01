<?php
include "connection.php";

$rs = Database::search("SELECT * FROM `product` LIMIT 8");
$num = $rs->num_rows;

var_dump($rs);
echo $num;
