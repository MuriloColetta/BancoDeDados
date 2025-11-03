<?php
$conn = new mysqli("localhost", "root", "senaisp", "Biblioteca");

$id_usuario = $_POST["id_usuario"];
$nome = $_POST["nome"];
$email = $_POST["email"];
$data = $_POST["data"];

$sql = "UPDATE usuario SET nome='$nome', email='$email', data_nascimento='$data' WHERE id_usuario=$id_usuario";

if ($conn->query($sql) === TRUE) {
    echo "Dados atualizados com sucesso";
    echo "<br><button><a href='index.html'>Voltar</a></button>";
} else {
    echo "Erro ao atualizar dados: " . $conn->error;
}

$conn->close();
?>