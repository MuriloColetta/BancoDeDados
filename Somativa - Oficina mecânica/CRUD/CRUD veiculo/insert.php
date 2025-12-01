<?php
$marca = $_POST['marca'];
$modelo = $_POST['modelo'];
$ano_fabricacao = $_POST['ano_fabricacao'];
$placa = $_POST['placa'];

$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO veiculo (marca, modelo, ano_fabricacao, placa) VALUES ('$marca', '$modelo', '$ano_fabricacao', '$placa')";

if ($conn->query($sql) === TRUE) {
    echo "Dados salvos com sucesso";
    echo "<br><button><a href='veiculo.html'>Voltar</a></button>";
} else {
    echo "Erro: " . $conn->error;
}

exit;
$conn->close();
?>