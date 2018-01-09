<?php
session_start();
$key = trim($_POST['queryString']);
if (isset($key{0})) {
    include("../../class/mysql.php");
    include("../../include/function.php");
    include("../../config.php");

    $obj_config = new config();
    $mysql = new mysql();
    $key = input($key);
    $mysql->setQuery(
        "select question_detail from question_image where question_detail like '%"
        . $key . "%' and language ='" . $_SESSION['lag']
        . "' limit 10");
    $result = $mysql->query();
    while ($row = mysql_fetch_assoc($result)) {
        echo '<li onClick="fill(\'' . $row['question_detail'] . '\');">'
        . cut_string($row['question_detail'],70) . '</li>';
    }
}
?>