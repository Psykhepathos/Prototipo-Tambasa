<?php
    include_once("conexao.php");
    //echo "$nome_usuario - $email_usuario";
        $mysqli->query("CALL consulta('{$_POST['nome_usuario']}', '{$_POST['email_usuario']}', '{$_POST['idade']}', '{$_POST['sexo']}', '{$_POST['doenca']}', '{$_POST['plano']}', '{$_POST['endereco']}')");
?>