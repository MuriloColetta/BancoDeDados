<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');

$id_mecanico = $_GET['id_mecanico'];
$result = $conn->query("SELECT * FROM mecanico WHERE id_mecanico = $id_mecanico");
$row = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Editar Mecânico</title>
</head>
<body>
    <footer>
        <h1>Oficina Mecânica</h1>
        <h2>Editar Mecânico</h2>
    </footer>
    <main>
        <form action="atualizar.php" method="post">
            <input type="hidden" name="id_mecanico" value="<?php echo $row['id_mecanico']; ?>">
            <label>Nome:</label>
            <input type="text" name="nome_mecanico" value="<?php echo $row['nome_mecanico']; ?>"><br>
            <label>CPF:</label>
            <input type="text" name="cpf_mecanico" value="<?php echo $row['cpf_mecanico']; ?>"><br>
            <label>Salario:</label>
            <input type="text" name="salario" value="<?php echo $row['salario']; ?>"><br>
            <input type="submit" value="Atualizar">
        </form>
    </main>
</body>
</html>
<?php $conn->close();?>