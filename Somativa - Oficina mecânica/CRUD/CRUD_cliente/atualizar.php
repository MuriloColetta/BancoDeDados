<?php
$conn = new mysqli("localhost", "root", "senaisp", "oficina");

$id_cliente = $_POST["id_cliente"];
$nome_cliente = $_POST["nome_cliente"];
$cpf_cliente = $_POST["cpf_cliente"];
$telefone_cliente = $_POST["telefone_cliente"];

$sql = "UPDATE cliente SET nome_cliente='$nome_cliente', cpf_cliente='$cpf_cliente', telefone_cliente='$telefone_cliente' WHERE id_cliente=$id_cliente";

if ($conn->query($sql) === TRUE) {
    echo "Dados atualizados com sucesso";
    echo "<br><button><a href='cliente.html'>Voltar</a></button>";
} else {
    echo "Erro ao atualizar dados: " . $conn->error;
}

$conn->close();
?>