<?php
$conn = new mysqli("localhost", "root", "senaisp", "oficina");

$id_veiculo = $_POST["id_veiculo"];
$marca = $_POST["marca"];
$modelo = $_POST["modelo"];
$ano_fabricacao = $_POST["ano_fabricacao"];
$placa = $_POST["placa"];

$sql = "UPDATE veiculo SET marca='$marca', modelo='$modelo', ano_fabricacao='$ano_fabricacao', placa='$placa' WHERE id_veiculo=$id_veiculo";

if ($conn->query($sql) === TRUE) {
    echo "Dados atualizados com sucesso";
    echo "<br><button><a href='veiculo.html'>Voltar</a></button>";
} else {
    echo "Erro ao atualizar dados: " . $conn->error;
}

$conn->close();
?>