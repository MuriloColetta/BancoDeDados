<?php
$nome = $_POST["nome"];
$cpf = $_POST["cpf"];
$data_nascimento = $_POST["data_nascimento"];
$email = $_POST["email"];
$cargo = $_POST["cargo"];

$conn = mysqli_connect("localhost","root","senaisp","Biblioteca");

if ($conn->connect_error) {
    die("Erro de conexão: ". $conn->connect_error);
}

$sql = "INSERT INTO funcionario (nome, cpf, data_nascimento, email, cargo) VALUES ('$nome', '$cpf', '$data_nascimento', '$email', '$cargo')";
if ($conn->query($sql) === TRUE) {
    echo "Dados salvos com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}
// header("Location: index.html");
exit;
$conn->close();
?>