<?php
require_once "conexao.php";
header("Content-Type: application/json; charset=UTF-8");

$dados = json_decode(file_get_contents("php://input"), true);
$id = $dados["id"] ?? null;

if (empty($id)) {
    http_response_code(400);
    echo json_encode(["sucesso" => false, "mensagem" => "id é obrigatório."]);
    exit;
}

// Exclusão lógica: NUNCA usar DELETE FROM alunos
$sql = "UPDATE alunos SET status = 'I' WHERE id_alunos = :id";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(":id", $id);
$stmt->execute();

echo json_encode(["sucesso" => true, "mensagem" => "Aluno desativado com sucesso."]);
?>
