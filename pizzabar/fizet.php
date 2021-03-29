<h1>Fizet</h1>
<?php

/* 
 *---beszúrás a rendelés tételbe $_SESSION["kosar"]
 * 
 * beszúrás a rendelésbe $_SESSION["user"]
 */
$sql = "INSERT INTO `prendeles` (`razon`, `vazon`, `fazon`, `datum`) VALUES (NULL, ".$_SESSION["user"]["vazon"].",1, current_timestamp())";
$result=$conn->query($sql);
$razon=$conn->insert_id;
foreach ($_SESSION["kosar"] as $key => $value) {
    $sql = "INSERT INTO `ptetel` (`razon`, `pazon`, `db`) VALUES (".$razon.", ".$value.", 1)";
    $conn->query($sql);
}
echo 'A rendelés rögzítése megtörtént';
?>
