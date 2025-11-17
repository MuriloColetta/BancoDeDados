<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');
$result = $conn->query("SELECT * FROM cliente");
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Lista de Clientes</title>
</head>
<body>
    <footer>
        <h1>Oficina Mecânica</h1>
        <h2>Lista de Clientes</h2>
    </footer>
    <main>
        <table> 
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>Telefone</th>
                <th>Ações</th>
            </tr>
            <?php while ($row = $result->fetch_assoc()) { ?>
                <tr>
                    <td><?php echo $row['id_cliente']; ?></td>
                    <td><?php echo $row['nome_cliente']; ?></td>
                    <td><?php echo $row['cpf_cliente']; ?></td>
                    <td><?php echo $row['telefone_cliente']; ?></td>
                    <td>
                        <a href='editar.php?id_cliente=<?php echo $row['id_cliente']; ?>'>Editar</a>
                        <a href="deletar.php?id=<?php echo $row['id_cliente']; ?>">Deletar</a>
                    </td>
                </tr>
            <?php } ?>
        </table>
        <a href="cliente.html">Cadastrar cliente</a>
        <a href="../index.html">Voltar para o menu principla</a>
    </main>
</body>
</html>
<?php $conn->close(); ?>