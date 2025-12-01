<?php
$conn = new mysqli("localhost", "root", "senaisp", "oficina");

$id_mecanico = $_POST["id_mecanico"];
$nome_mecanico = $_POST["nome_mecanico"];
$cpf_mecanico = $_POST["cpf_mecanico"];
$salario = $_POST["salario"];

$sql = "UPDATE mecanico SET nome_mecanico='$nome_mecanico', cpf_mecanico='$cpf_mecanico', salario='$salario' WHERE id_mecanico=$id_mecanico";

if ($conn->query($sql) === TRUE) {
    echo "Dados atualizados com sucesso";
    echo "<br><button><a href='mecanico.html'>Voltar</a></button>";
} else {
    echo "Erro ao atualizar dados: " . $conn->error;
}

$conn->close();
?>