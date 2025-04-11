<?php

?>

<footer class="footer seccion">
    <div class="contenedor contenedor-footer">
        <nav class="navegacion">
            <a href="<?php echo RUTA_ROOT . 'nosotros.php';?>">Nosotros</a>
            <a href="<?php echo RUTA_ROOT . 'anuncios.php';?>">Anuncios</a>
            <a href="<?php echo RUTA_ROOT . 'blog.php';?>">Blog</a>
            <a href="<?php echo RUTA_ROOT . 'contacto.php';?>">Contacto</a>
        </nav>
    </div>

    <p class="copyright">Todos los derechos Reservados <?php echo date('Y'); ?> &copy;</p>
    <h6> <?php echo INCLU_NFRM ?> </h6>
</footer>

<script src="<?php echo RUTA_FOOTER .  "bundle.min.js"; ?>">

</script>

</body>

</html>