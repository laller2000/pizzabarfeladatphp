<h1>Kosár</h1>
<table>
    <form method="POST">

<?php
$_SESSION["kosar"]=$_POST['pizzaid'];
$ids = implode(",",$_POST["pizzaid"]);
$sql="SELECT `pazon`,`pnev`,`par` FROM `ppizza` WHERE `pazon` IN(".$ids.");";
var_dump($sql);
$result = $conn->query($sql);
$fizetendo = 0;
while ($row =$result->fetch_assoc()) {
     $td = '<tr><td class="pizzanev">'.$row['pnev'].'</td>'
              .'<td class="pizzaar text-right">'.$row['par'].' Ft</td></tr>';
      echo $td;
           $fizetendo+=$row['par'];
}
echo '<tr><td class="text-right">Fizetendő:</td>'.$fizetendo.' FT</td></tr>';
?>
</table>
        <input type="submit" class="btn btn-primary"  value="Fizetés"/>
        <input type="hidden" name="fizet" value="true"/>
    </form>