<?php
$nome_mecanico = $_POST['nome_mecanico'];
$cpf_mecanico = $_POST['cpf_mecanico'];
$salario = $_POST['salario'];

$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO mecanico (nome_mecanico, cpf_mecanico, salario) VALUES ('$nome_mecanico', '$cpf_mecanico', '$salario')";

if ($conn->query($sql) === TRUE) {
    echo "Dados salvos com sucesso";
    echo "<br><button><a href='mecanico.html'>Voltar</a></button>";
} else {
    echo "Erro: " . $conn->error;
}

exit;
$conn->close();
?>