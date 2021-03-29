<?php
/*
 * -----Megadjuk a script által létrehozott weboldal kódolását------
 */
header('Content-Type: text/html; charset=utf-8');
/*
 * --Szuperglobal változó feltöltés beállítás
 */
session_start();
require_once './kapcsolat.php'; //használható az adatbázis kapcsolat  mysqli;
$menupont= filter_input(INPUT_GET,"menu",FILTER_SANITIZE_STRING);
if (!isset($_SESSION[("belepett")])) {
    $_SESSION["belepett"]=false;
}
$_SESSION["error"]=false;
if (filter_input(INPUT_POST,"login",FILTER_VALIDATE_BOOLEAN,FILTER_NULL_ON_FAILURE)) {
    //Beviteli mezők értékeit kiolvassuk
    $username= filter_input(INPUT_POST,"InputUserName",FILTER_SANITIZE_STRING);
    $password= filter_input(INPUT_POST,"InputPassword", FILTER_SANITIZE_STRING);
    //Ellenőrzás az adatbázisban
    $result=$conn->query("SELECT `vazon`,`vnev`,`vcim` FROM `pvevo` WHERE `vnev`='".$username."' AND `jelszo` =md5('".$password."')");
    if ($result->num_rows==1) {
       $_SESSION["user"]=$result->fetch_assoc(); 
      $_SESSION["belepett"]=true;
    }else{
    $_SESSION["belepett"]=false;
    $_SESSION["error"]=true;
    $_SESSION["error_message"]="Sikertelen azonosítás!";
    }
    
}
require_once './head.php';
require_once './fejlec.php';
if ($_SESSION["belepett"]) {
    require_once './menu.php';
    require_once './tartalom.php';
}else{
    require_once './login.php';
}
require_once './lablec.php';
?>

   
                

