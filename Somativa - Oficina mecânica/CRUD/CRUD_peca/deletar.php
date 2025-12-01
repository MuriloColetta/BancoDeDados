<?php
$conn = new mysqli("localhost", "root", "senaisp", "oficina");
if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

$id = $_GET['id'];

// Preparar a declaração
$stmt = $conn->prepare("DELETE FROM peca WHERE id_peca = ?");
// Vincular o parâmetro 'id' como um inteirpo (i)
$stmt->bind_param("i", $id);

// Executar e verificar
if ($stmt->execute()) {
    echo "Peça deletado com sucesso.";
} else {
    echo "Erro ao deletar peça: " . $stmt->error;
}
echo"<br><a href='/listar.php'>Voltar para a lista</a>";