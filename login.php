<?php

require 'incluir/funciones.php';
include 'plantillas/pub_var.php';
incluirTemplate('header', RUTA_PLANTILLAS);
require 'configurar/ado_db.php';
require 'configurar/dbconexion.php';

$cnn = conectarDB();


// Autenticar el usuario

$errores = [];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = mysqli_real_escape_string($cnn,  filter_var($_POST['email'], FILTER_VALIDATE_EMAIL));
    $password = mysqli_real_escape_string($cnn,  $_POST['password']);

    if (!$email) {
        $errores[] = "El email es obligatorio o no es válido";
    }

    if (!$password) {
        $errores[] = "El Password es obligatorio";
    }

    if (empty($errores)) {
        // Revisar si el usuario existe.

        $vsql = "SELECT * FROM tb_usuario"; //WHERE femail = 'ramcdema@yahoo.com'";

        $vsql .= " WHERE femail = '" .  $email . "'";

        $vresult = mysqli_query($cnn, $vsql);


        if ($vresult->num_rows) {
            // Revisar si el password es correcto
            $usuario = mysqli_fetch_assoc($vresult);

            // var_dump($usuario['password']);

            // Verificar si el password es correcto o no

            $auth = password_verify($password, $usuario['fclave']);

            if ($auth) {
                // El usuario esta autenticado
                session_start();

                // Llenar el arreglo de la sesión
                $_SESSION['usuario'] = $usuario['femail'];
                $_SESSION['login'] = true;
                echo "si entro correctamente";

                header('Location: index.php');
            } else {
                $errores[] = 'El password es incorrecto';
            }
        } else {
            $errores[] = "El Usuario no existe";
        }
    }
}

?>

<main class="contenedor seccion contenido-centrado">
    <h1>Iniciar Sesión</h1>

    <?php foreach ($errores as $error): ?>
    <div class="alerta error">
        <?php echo $error; ?>
    </div>
    <?php endforeach; ?>

    <form method="POST" class="formulario" novalidate>
        <fieldset>
            <legend>Email y Password</legend>

            <label for="email">E-mail</label>
            <input type="email" name="email" placeholder="Tu Email" id="email" require>

            <label for="password">Password</label>
            <input type="password" name="password" placeholder="Tu Password" id="password" require>
        </fieldset>

        <input type="submit" value="Iniciar Sesión" class="boton boton-verde">
    </form>
</main>

<?php
incluir_nfrm(legen_footer("login.php en la carpeta (root)"));
incluirTemplate('footer', RUTA_PLANTILLAS, true);
?>