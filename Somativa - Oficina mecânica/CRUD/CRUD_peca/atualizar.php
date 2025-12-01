<?php
$conn = new mysqli("localhost", "root", "senaisp", "oficina");

$id_peca = $_POST["id_peca"];
$nome_peca = $_POST["nome_peca"];
$quantidade = $_POST["quantidade"];
$preco = $_POST["preco"];
$descricao_peca = $_POST["descricao_peca"];

$sql = "UPDATE peca SET nome_peca='$nome_peca', quantidade='$quantidade', preco='$preco', descricao_peca='$descricao_peca' WHERE id_peca=$id_peca";

if ($conn->query($sql) === TRUE) {
    echo "Dados atualizados com sucesso";
    echo "<br><button><a href='peca.html'>Voltar</a></button>";
} else {
    echo "Erro ao atualizar dados: " . $conn->error;
}

$conn->close();
?>