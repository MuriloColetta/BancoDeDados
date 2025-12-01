<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina');
$result = $conn->query("SELECT * FROM veiculo");
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Lista de Veículos</title>
</head>
<body>
    <footer>
        <h1>Oficina Mecânica</h1>
        <h2>Lista de Veículos</h2>
    </footer>
    <main>
        <table> 
            <tr>
                <th>ID</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Ano de fabricação</th>
                <th>Placa</th>
                <th>Ações</th>
            </tr>
            <?php while ($row = $result->fetch_assoc()) { ?>
                <tr>
                    <td><?php echo $row['id_veiculo']; ?></td>
                    <td><?php echo $row['marca']; ?></td>
                    <td><?php echo $row['modelo']; ?></td>
                    <td><?php echo $row['ano_fabricacao']; ?></td>
                    <td><?php echo $row['placa']; ?></td>
                    <td>
                        <a href='editar.php?id_veiculo=<?php echo $row['id_veiculo']; ?>'>Editar</a>
                        <a href="deletar.php?id=<?php echo $row['id_veiculo']; ?>">Deletar</a>
                    </td>
                </tr>
            <?php } ?>
        </table>
        <a href="veiculo.html">Cadastrar veículo</a>
        <a href="../index.html">Voltar para o menu principla</a>
    </main>
</body>
</html>
<?php $conn->close(); ?>