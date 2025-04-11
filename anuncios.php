<?php 
    require 'incluir/funciones.php';
    incluirTemplate('header', RUTA_PLANTILLAS);
?>

    <main class="contenedor seccion">

        <h2>Casas y Depas en Venta</h2>

        <?php 
            $limite = 10;
            include RUTA_ROOT . 'anuncios.php';
        ?>
    </main>

<?php 
    incluirTemplate('footer',RUTA_PLANTILLAS);
?>