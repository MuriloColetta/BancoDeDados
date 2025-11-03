<?php
$conn = new mysqli("localhost", "root", "senaisp", "Biblioteca");
if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

$id = $_GET['id'];

// Preparar a declaração
$stmt = $conn->prepare("DELETE FROM usuario WHERE id_usuario = ?");
// Vincular o parâmetro 'id' como um inteirpo (i)
$stmt->bind_param("i", $id);

// Executar e verificar
if ($stmt->execute()) {
    echo "Usuário deletado com sucesso.";
} else {
    echo "Erro ao deletar usuário: " . $stmt->error;
}
echo"<br><a href='/listar.php'>Voltar para a lista</a>";