<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');

$marca = $_GET['marca'];
$result = $conn->query("SELECT * FROM veiculo WHERE marca = $marca");
$row = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Editar Veículo</title>
</head>
<body>
    <footer>
        <h1>Oficina Mecânica</h1>
        <h2>Editar Veículo</h2>
    </footer>
    <main>
        <form action="atualizar.php" method="post">
            <input type="hidden" name="id_veiculo" value="<?php echo $row['id_veiculo']; ?>">
            <label>Marca:</label>
            <input type="text" name="marca" value="<?php echo $row['marca']; ?>"><br>
            <label>Modelo:</label>
            <input type="text" name="modelo" value="<?php echo $row['modelo']; ?>"><br>
            <label>Ano de fabricação:</label>
            <input type="number" name="ano_fabricacao" value="<?php echo $row['ano_fabricacao']; ?>"><br>
            <label>Placa:</label>
            <input type="text" name="placa" value="<?php echo $row['placa']; ?>">
            <input type="submit" value="Atualizar">
        </form>
    </main>
</body>
</html>
<?php $conn->close();?>