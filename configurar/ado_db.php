<?php
function fnl_aud($vsql, $base)
{
    $resultado = mysqli_query($base, $vsql);
    $vresul = $resultado;
    return $vresul;
}




function maximo_corr($vsql, $base)
{
    $vmcorr = 0;
    $result = mysqli_query($base, $vsql);
    $numero = mysqli_fetch_assoc($result);
    if ($numero == null) {
        $vmcorr = 1;
    } else {
        $vmcorr = $numero['mcorr'] + 1;
    }
    return $vmcorr;
}

function sql_array($vsql, $base): array
{
    $resul0 = [];
    $resul0 = mysqli_query($base, $vsql);
    echo "estoy en la funcion sql_array y resultado " . $resul0;
    exit;
    return $resul0;
}