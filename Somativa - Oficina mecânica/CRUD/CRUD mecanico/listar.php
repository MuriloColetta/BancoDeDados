<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');
$result = $conn->query("SELECT * FROM mecanico");
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Lista de Mecânicos</title>
</head>
<body>
    <footer>
        <h1>Oficina Mecânica</h1>
        <h2>Lista de Mecânicos</h2>
    </footer>
    <main>
        <table> 
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>Salario (R$)</th>
                <th>Ações</th>
            </tr>
            <?php while ($row = $result->fetch_assoc()) { ?>
                <tr>
                    <td><?php echo $row['id_mecanico']; ?></td>
                    <td><?php echo $row['nome_mecanico']; ?></td>
                    <td><?php echo $row['cpf_mecanico']; ?></td>
                    <td><?php echo $row['salario']; ?></td>
                    <td>
                        <a href='editar.php?id_mecanico=<?php echo $row['id_mecanico']; ?>'>Editar</a>
                        <a href="deletar.php?id=<?php echo $row['id_mecanico']; ?>">Deletar</a>
                    </td>
                </tr>
            <?php } ?>
        </table>
        <a href="mecanico.html">Cadastrar mecânico</a>
        <a href="../index.html">Voltar para o menu principla</a>
    </main>
</body>
</html>
<?php $conn->close(); ?>