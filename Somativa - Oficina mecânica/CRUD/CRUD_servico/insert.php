<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');

$descricao_servico = $_POST['descricao_servico'];
$preco_servico = $_POST['preco_servico'];

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO servico ( descricao_servico, preco_servico) VALUES ('$descricao_servico', '$preco_servico')";

if ($conn->query($sql) === TRUE) {
    echo "Dados salvos com sucesso";
    echo "<br><button><a href='servico.html'>Voltar</a></button>";
} else {
    echo "Erro: " . $conn->error;
}

exit;
$conn->close();
?>