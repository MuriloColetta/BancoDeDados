<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');

$id_servico = $_GET['id_servico'];
$result = $conn->query("SELECT * FROM servico WHERE id_servico = $id_servico");
$row = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Editar Serviço</title>
</head>
<body>
    <footer>
        <h1>Oficina Mecânica</h1>
        <h2>Editar Serviço</h2>
    </footer>
    <main>
        <form action="atualizar.php" method="post">
            <label>Preço:</label>
            <input type="text" name="preco_servico" value="<?php echo $row['preco_servico']; ?>"><br>
            <label>Descrição</label>
            <input type="text" name="descricao_servico" value="<?php echo $row['descricao_servico'];?>">
            <input type="submit" value="Atualizar">
        </form>
    </main>
</body>
</html>
<?php $conn->close();?>