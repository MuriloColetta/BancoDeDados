<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');
$result = $conn->query("SELECT * FROM peca");
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Lista de Peças</title>
</head>
<body>
    <footer>
        <h1>Oficina Mecânica</h1>
        <h2>Lista de Peças</h2>
    </footer>
    <main>
        <table> 
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Quantidade</th>
                <th>Preço (R$)</th>
                <th>Descrição</th>
                <th>Ações</th>
            </tr>
            <?php while ($row = $result->fetch_assoc()) { ?>
                <tr>
                    <td><?php echo $row['id_peca']; ?></td>
                    <td><?php echo $row['nome_peca']; ?></td>
                    <td><?php echo $row['quantidade']; ?></td>
                    <td><?php echo $row['preco']; ?></td>
                    <td><?php echo $row['descricao_peca']; ?></td>
                    <td>
                        <a href='editar.php?id_peca=<?php echo $row['id_peca']; ?>'>Editar</a>
                        <a href="deletar.php?id=<?php echo $row['id_peca']; ?>">Deletar</a>
                    </td>
                </tr>
            <?php } ?>
        </table>
        <a href="peca.html">Cadastrar peça</a>
        <a href="../index.html">Voltar para o menu principla</a>
    </main>
</body>
</html>
<?php $conn->close(); ?>