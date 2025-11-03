<?php
$conn = new mysqli('localhost', 'root', 'senaisp', 'Biblioteca');

$id_usuario = $_GET['id_usuario'];
$result = $conn->query("SELECT * FROM usuario WHERE id_usuario = $id_usuario");
$row = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Editar Aluno</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<form action="atualizar.php" method="post">
    <input type="hidden" name="id_usuario" value="<?php echo $row['id_usuario']; ?>">
    
    <label>Nome:</label>
    <input type="text" name="nome" value="<?php echo $row['nome']; ?>"><br>
    
    <label>Email:</label>
    <input type="text" name="email" value="<?php echo $row['email']; ?>"><br>
    
    <label>Data de Nascimento:</label>
    <input type="date" name="data" value="<?php echo $row['data_nascimento']; ?>"><br>
    
    <input type="submit" value="Atualizar">
</form>

</body>
</html>
<?php $conn->close(); // Mova o close para o final ?>