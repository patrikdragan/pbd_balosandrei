<html>
<head></head>
<body>
<table border=1>
<tr><td>Nume</td><td>E-mail</td></tr>
<?php
$bd=new PDO("mysql:host=localhost;dbname=e1“,'root','');
$utilizatori=$bd->query('SELECT * FROM utilizatori');
foreach($utilizatori as $utilizator){
   echo '<tr><td>'.$utilizator['nume'].'</td><td>'.$utilizator['email'].'</td></tr>';
   }
?>
</table>
</body>
</html>
