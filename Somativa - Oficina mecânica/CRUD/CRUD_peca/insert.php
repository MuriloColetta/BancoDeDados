<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');

$nome_peca = $_POST['nome_peca'];
$quantidade = $_POST['quantidade'];
$preco = $_POST['preco'];
$descricao_peca = $_POST['descricao_peca'];

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO peca (nome_peca, quantidade, preco, descricao_peca) VALUES ('$nome_peca', '$quantidade', '$preco', '$descricao_peca')";

if ($conn->query($sql) === TRUE) {
    echo "Dados salvos com sucesso";
    echo "<br><button><a href='peca.html'>Voltar</a></button>";
} else {
    echo "Erro: " . $conn->error;
}

exit;
$conn->close();
?>