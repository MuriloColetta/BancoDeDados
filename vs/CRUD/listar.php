<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'Biblioteca');
$result = $conn->query("SELECT * FROM usuario");
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Lista de usuário</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Usuário</h2>
    <table> <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Email</th>
            <th>Data de Nascimento</th>
            <th>Ações</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()) { ?>
            <tr>
                <td><?php echo $row['id_usuario']; ?></td>
                <td><?php echo $row['nome']; ?></td>
                <td><?php echo $row['email']; ?></td>
                <td><?php echo $row['data_nascimento']; ?></td>
                <td>
                    <a href='editar.php?id_usuario=<?php echo $row['id_usuario']; ?>'>Editar</a>
                    <a href="deletar.php?id=<?php echo $row['id_usuario']; ?>">Deletar</a>
                </td>
            </tr>
        <?php } ?>
    </table>
    
    <a href="index.html"><button type="button">Pagina Inicial</button></a>

</body>
</html>
<?php $conn->close(); ?>