<?php
require 'configurar/ado_db.php';
require 'incluir/funciones.php';
require 'plantillas/pub_var.php';
// Importar la conexión
require 'configurar/dbconexion.php';
$db = conectarDB();

// Crear un email y password

$vsql0 = "";
$vsql0 = "select MAX(fcod_usuario) AS mcorr";
$vsql0 .= " FROM tb_usuario";
$vsql0 .= " WHERE not fcod_usuario is null";
$vsql0 .= " having (not MAX(fcod_usuario) is null);";
$vcod_usuario = maximo_corr($vsql0, $db);

$email = "metatron6611@gmail.com";
$password = "456789";

$passwordHash = password_hash($password, PASSWORD_BCRYPT);

$micodigo = str_pad($vcod_usuario, 4, "0", STR_PAD_LEFT);
// Query para crear el usuario
$query = " INSERT INTO tb_usuario (";
$query .= " fcod_usuario,";
$query .= " fnombre_usuario,";
$query .= " femail,";
$query .= " fclave)";
$query .= " VALUES ('";
$query .= $micodigo  . "','";
$query .= "Usuario " . $micodigo . "','";
$query .= $email . "','";
$query .= $passwordHash . "');";

// echo $query;

// Agregarlo a la base de datos
mysqli_query($db, $query);

mysqli_close($db);

echo "Proceso Concluido Con Exito";