<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');

$id_peca = $_GET['id_peca'];
$result = $conn->query("SELECT * FROM peca WHERE id_peca = $id_peca");
$row = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Editar Peça</title>
</head>
<body>
    <footer>
        <h1>Oficina Mecânica</h1>
        <h2>Editar Peça</h2>
    </footer>
    <main>
        <form action="atualizar.php" method="post">
            <input type="hidden" name="id_peca" value="<?php echo $row['id_peca']; ?>">
            <label>Nome:</label>
            <input type="text" name="nome_peca" value="<?php echo $row['nome_peca']; ?>"><br>
            <label>Quantidade:</label>
            <input type="number" name="quantidade" value="<?php echo $row['quantidade']; ?>"><br>
            <label>Preço:</label>
            <input type="text" name="preco" value="<?php echo $row['preco']; ?>"><br>
            <label>Descrição</label>
            <input type="text" name="descricao_peca" value="<?php echo $row['descricao_peca'];?>">
            <input type="submit" value="Atualizar">
        </form>
    </main>
</body>
</html>
<?php $conn->close();?>