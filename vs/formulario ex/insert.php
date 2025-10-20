<?php
$nome = $_POST["nome"];
$email = $_POST["email"];

$conn = mysqli_connect("localhost","root","senaisp","Biblioteca");

if ($conn->connect_error) {
    die("Erro de conexão: ". $conn->connect_error);
}

$sql = "INSERT INTO usuario (nome, email) VALUES ('$nome', '$email')";
if ($conn->query($sql) === TRUE) {
    echo "Dados salvos com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}
// header("Location: index.html");
exit;
$conn->close();
?>