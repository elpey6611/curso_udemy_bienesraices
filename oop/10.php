<?php
include 'includes/header.php';
// Conectar a la BD con PDO 
// Este comando puede conectar a cualquier base de datos
//y utilizando sentencia preparada
$cn = new PDO('mysql:host=localhost:3306; dbname=db_bienesraices_crud', 'root', 'Tsoft2025.**');
// Creamos el query
$sql0 = "SELECT * from tb_propiedades";
// Lo preparamos
$stmt = $cn->prepare($sql0);
// Lo ejecutamos
$stmt->execute();
// Obtener los resultados
$rst = $stmt->fetchAll(PDO::FETCH_ASSOC);
// Iterar
foreach ($rst as $rst_prop):
    echo $rst_prop['ftitulo'];
    echo "<br>";
    echo $rst_prop['fdescripcion'];
    echo "<br>";
endforeach;


include 'includes/footer.php';