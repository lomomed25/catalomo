<?php

error_reporting(0);
//Setting session start
session_start();

$total=0;

//Database connection, replace with your connection string.. Used PDO
$conn = new PDO("mysql:host=localhost;dbname=comuniquemonos", 'root', '');		
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


//get action string
//isset es lo contrario de isempty 
$action = isset($_GET['action'])?$_GET['action']:"";

//Add to cart
if($action=='addcart' && $_SERVER['REQUEST_METHOD']=='POST') {
	
	//Finding the product by code
	$query = "SELECT * FROM articulos WHERE nro_articulos=:sku";
	$stmt = $conn->prepare($query);
	$stmt->bindParam('sku', $_POST['sku']);
	$stmt->execute();
	$product = $stmt->fetch();
	
	$currentQty = $_SESSION['products'][$_POST['sku']]['qty']+1; //Incrementing the product qty in cart
	$_SESSION['products'][$_POST['sku']]=array('qty'=>$currentQty,'name'=>$product['nom_art'],'image'=>$product['imagen_art'],'price'=>$product['precio_art']);
	$product='';
	header("Location:carrito1_com.php");
}

//Empty All
if($action=='emptyall') {
	$_SESSION['products'] =array();
	header("Location:carrito1_com.php");	
}

//Empty one by one
if($action=='empty') {
	$sku = $_GET['sku'];
	$products = $_SESSION['products'];
	unset($products[$sku]);
	$_SESSION['products']= $products;
	header("Location:carrito1_com.php");	
}


 
 
 //Get all Products
$query = "SELECT * FROM articulos";
$stmt = $conn->prepare($query);
$stmt->execute();
$products = $stmt->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Articulos</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="width:1000px;">
  <?php if(!empty($_SESSION['products'])):?>
  <nav class="navbar navbar-inverse" style="background:#04B745;">
    <div class="container-fluid pull-left" style="width:300px;">
      <div class="navbar-header"> <a class="navbar-brand" href="#" style="color:#FFFFFF;">Carrito de Compras</a> </div>
    </div>
    <div class="pull-right" style="margin-top:7px;margin-right:7px;"><a href="carrito1_com.php?action=emptyall" class="btn btn-info">Vaciar carrito</a></div>
    <div class="pull-right" style="margin-top:7px;margin-right:7px;"><a href="carrito2_com.php" class="btn btn-info">Ir a pagar</a></div>
  </nav>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Imagen</th>
        <th>Articulo</th>
        <th>Precio</th>
        <th>Cantidad</th>
        <th>Acciones</th>
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
    <?php $total = $total+$product['price']*$product['qty'];?>
    <?php endforeach;?>
    <tr><td colspan="5" align="right"><h4>Total:$<?php print number_format($total,0,',','.')?></h4></td></tr>
  </table>
  <?php endif;?>
  <nav class="navbar navbar-inverse" style="background:#04B745;">
    <div class="container-fluid">
      <div class="navbar-header"> <a class="navbar-brand" href="#" style="color:#FFFFFF;">Productos</a> </div>
    </div>
  </nav>
  <div class="row">
    <div class="container" style="width:1000px;">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Imagen</th>
                    <th>Articulo</th>
                    <th>Descripción</th>
                    <th>Precio</th>
                    <th></th>
                </tr>
                </thead>
      <?php foreach($products as $product):?>
            <tr>
                <td><img src="<?php print $product['imagen_art']?>" width="70"></td>
                <td><?php print $product['nombre_art']?></td>
                <td><?php print $product['descripcion']?></td>
                <td>$<?php print number_format($product['precio_art'],0,',','.')?></td>
                <td>
                <form method="post" action="carrito1_com.php?action=addcart">
                    <button type="submit" class="btn btn-warning">Añadir al carrito</button>
                    <input type="hidden" name="sku" value="<?php print $product['nro_articulos']?>">
                </form>
                </td>
            </tr>
      <?php endforeach;?>
    </div>
  </div>
</div>
</body>
</html>