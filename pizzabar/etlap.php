<form method="POST">
    <input class="btn btn-primary" type="submit" value="Kosárba">
    <input type="hidden" name="kosar" value="true"/>
<table class="table ">
    <thead>
        <tr>
            <th>Kép</th>
            <th>név</th>
            <th>leírás</th>
            <th>ár</th>
            <th>kiválasztva</th>
        </tr>
    </thead>
    <tbody>
<?php
$result=$conn->query("SELECT `pazon`,`pnev`,`par`,`pimages`,`pleiras` FROM `ppizza` WHERE 1");
while ($row=$result->fetch_assoc()){
    $leiras = '<ul>';
    
    foreach (explode(",", $row['pleiras']) as $value) {
        $leiras .= '<li>'.$value.'</li>';
        
    }
    $leiras .='</ul>'; 
    echo '<tr>'
            .'<td><img src="images/Pizza_'.$row['pnev'].'.png" class="PizzaKep"  alt="images/Pizza_'.$row['pnev'].'.png" title="images/Pizza'.$row['pnev'].'.png"></td>'
            .'<td>'.$row['pnev'].'</td>'
            .'<td>'.$leiras.'</td>'
            .'<td>'.$row['par'].'</td>'
            .'<td><input type="checkbox" name="pizzaid[]" value="'.$row['pazon'].'"/></td>'
        .'</tr>';
}
?>
    </tbody></table><input type="checkbox" name="pizzaid[]" value="'.$row['pazon'].'"/>
</form>