<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');

$id_cliente = $_GET['id_cliente'];
$result = $conn->query("SELECT * FROM cliente WHERE id_cliente = $id_cliente");
$row = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Editar Cliente</title>
</head>
<body>
    <footer>
        <h1>Oficina Mecânica</h1>
        <h2>Editar Cliente</h2>
    </footer>
    <main>
        <form action="atualizar.php" method="post">
            <input type="hidden" name="id_cliente" value="<?php echo $row['id_cliente']; ?>">
            <label>Nome:</label>
            <input type="text" name="nome_cliente" value="<?php echo $row['nome_cliente']; ?>"><br>
            <label>CPF:</label>
            <input type="text" name="cpf_cliente" value="<?php echo $row['cpf_cliente']; ?>"><br>
            <label>Telefone:</label>
            <input type="text" name="telefone_cliente" value="<?php echo $row['telefone_cliente']; ?>"><br>
            <input type="submit" value="Atualizar">
        </form>
    </main>
</body>
</html>
<?php $conn->close();?>