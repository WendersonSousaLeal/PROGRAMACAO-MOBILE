<?php
require_once "conexao.php";
header("Content-Type: application/json; charset=UTF-8");

$dados = json_decode(file_get_contents("php://input"), true);

$nome            = $dados["nome"]            ?? "";
$cpf             = $dados["cpf"]             ?? "";
$ra              = $dados["ra"]              ?? "";
$dataNascimento  = $dados["data_nascimento"] ?? null;   // formato "AAAA-MM-DD"
$numeroCasa      = $dados["numero_casa"]     ?? 0;
$complemento     = $dados["complemento"]     ?? null;
$telefone        = $dados["telefone"]        ?? "";
$email           = $dados["email"]           ?? "";

if (empty($nome) || empty($cpf) || empty($ra) || empty($dataNascimento)) {
    http_response_code(400);
    echo json_encode([
        "sucesso"  => false,
        "mensagem" => "nome, cpf, ra e data_nascimento são obrigatórios."
    ]);
    exit;
}

try {
    $pdo->beginTransaction();

    // 1) Cria o contato (telefone/e-mail) do aluno
    $sqlContato = "INSERT INTO contatos (Telefone, Email) VALUES (:telefone, :email)";
    $stmtContato = $pdo->prepare($sqlContato);
    $stmtContato->bindValue(":telefone", $telefone);
    $stmtContato->bindValue(":email", $email);
    $stmtContato->execute();
    $idContato = $pdo->lastInsertId();

    // 2) Cria o aluno já como ativo ('A'), vinculado ao contato criado
    $sqlAluno = "INSERT INTO alunos
                    (Nome, NumeroDaCasa, Complemento, DataDeNascimento, CPF, RA_aluno, id_contatos, status)
                 VALUES
                    (:nome, :numero_casa, :complemento, :data_nascimento, :cpf, :ra, :id_contatos, 'A')";
    $stmtAluno = $pdo->prepare($sqlAluno);
    $stmtAluno->bindValue(":nome", $nome);
    $stmtAluno->bindValue(":numero_casa", $numeroCasa);
    $stmtAluno->bindValue(":complemento", $complemento);
    $stmtAluno->bindValue(":data_nascimento", $dataNascimento);
    $stmtAluno->bindValue(":cpf", $cpf);
    $stmtAluno->bindValue(":ra", $ra);
    $stmtAluno->bindValue(":id_contatos", $idContato);
    $stmtAluno->execute();

    $pdo->commit();

    echo json_encode(["sucesso" => true, "mensagem" => "Aluno cadastrado com sucesso."]);
} catch (PDOException $e) {
    $pdo->rollBack();
    http_response_code(500);
    echo json_encode(["sucesso" => false, "mensagem" => "Erro ao cadastrar: " . $e->getMessage()]);
}
?>
