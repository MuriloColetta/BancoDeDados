<?php
$conn = new mysqli("localhost", "root", "senaisp", "oficina");

$id_servico = $_POST["id_servico"];
$descricao_servico = $_POST["descricao_servico"];
$preco_servico = $_POST["preco_servico"];

$sql = "UPDATE servico SET descricao_servico='$descricao_servico', preco_servico='$preco_servico' WHERE id_servico=$id_servico";

if ($conn->query($sql) === TRUE) {
    echo "Dados atualizados com sucesso";
    echo "<br><button><a href='servico.html'>Voltar</a></button>";
} else {
    echo "Erro ao atualizar dados: " . $conn->error;
}

$conn->close();
?>