<?php
error_reporting(0);
//Setting session start
session_start();

$total=0;

//Database connection, replace with your connection string.. Used PDO
$conn = new PDO("mysql:host=localhost;dbname=comuniquemonos", 'root', '');		
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$products = $_SESSION['products'];


?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>A pagar!</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="width:600px;">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Imagen</th>
        <th>Articulo</th>
        <th>Precio</th>
        <th>Cantidad</th>
        <th>Accion</th>
      </tr>
    </thead>
    <?php foreach($_SESSION['products'] as $key=>$product):?>
    <tr>
      <td><img src="<?php print $product['image']?>" width="50"></td>
      <td><?php print $product['name']?></td>
      <td>$<?php print number_format($product['price'],0,',','.')?></td>
      <td><?php print $product['qty']?></td>
      <td><a href="carrito1_com.php?action=empty&sku=<?php print $key?>" class="btn btn-info">Eliminar</a></td>
    </tr>
    <?php $total = $total+$product['price'];?>
    <?php endforeach;?>
    <tr><td colspan="5" align="right"><h4>Total:$<?php print number_format($total,0,',','.')?></h4></td></tr>
  </table>
    </div>
</body>
</html>