<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');
$result = $conn->query("SELECT * FROM servico");
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Lista de Serviços</title>
</head>
<body>
    <footer>
        <h1>Oficina Mecânica</h1>
        <h2>Lista de Serviços</h2>
    </footer>
    <main>
        <table> 
            <tr>
                <th>ID</th>
                <th>Descrição</th>
                <th>Preço (R$)</th>
                <th>Ações</th>
            </tr>
            <?php while ($row = $result->fetch_assoc()) { ?>
                <tr>
                    <td><?php echo $row['id_servico']; ?></td>
                    <td><?php echo $row['descricao_servico']; ?></td>
                    <td><?php echo $row['preco_servico']; ?></td>
                    <td>
                        <a href='editar.php?id_servico=<?php echo $row['id_servico']; ?>'>Editar</a>
                        <a href="deletar.php?id=<?php echo $row['id_servico']; ?>">Deletar</a>
                    </td>
                </tr>
            <?php } ?>
        </table>
        <a href="servico.html">Cadastrar serviço</a>
        <a href="../index.html">Voltar para o menu principla</a>
    </main>
</body>
</html>
<?php $conn->close(); ?>