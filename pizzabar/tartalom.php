
<?php
switch ($menupont){
    case "vevok":
        require_once './vevok.php';
        break;
    case "Futar":
        require_once './Futar.php';
        break;
    case "Rendelesek":
        require_once './Rendelesek.php';
        break;
    case "Kilepes":
        require_once './Kilepes.php';
        break;
    default:
        break;
}
