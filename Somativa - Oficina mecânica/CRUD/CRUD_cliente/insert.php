<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');

$nome_cliente = $_POST['nome_cliente'];
$cpf_cliente = $_POST['cpf_cliente'];
$telefone_cliente = $_POST['telefone_cliente'];



if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO cliente (nome_cliente, cpf_cliente, telefone_cliente) VALUES ('$nome_cliente', '$cpf_cliente', '$telefone_cliente')";

if ($conn->query($sql) === TRUE) {
    echo "Dados salvos com sucesso";
    echo "<br><button><a href='cliente.html'>Voltar</a></button>";
} else {
    echo "Erro: " . $conn->error;
}

exit;
// $conn->close();
?>