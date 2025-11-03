<?php
$nome = $_POST['nome'];
$email = $_POST['email'];
$data = $_POST['data_nascimento'];

$conn = new mysqli('localhost', 'root', 'senaisp', 'Biblioteca');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO usuario (nome, email, data_nascimento) VALUES ('$nome', '$email', '$data')";

if ($conn->query($sql) === TRUE) {
    echo "Dados salvos com sucesso";
    echo "<br><button><a href='index.html'>Voltar</a></button>";
} else {
    echo "Erro: " . $conn->error;
}

exit;
$conn->close();