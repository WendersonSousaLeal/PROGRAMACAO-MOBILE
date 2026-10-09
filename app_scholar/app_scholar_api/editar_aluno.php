<?php
require_once "conexao.php";
header("Content-Type: application/json; charset=UTF-8");

$dados = json_decode(file_get_contents("php://input"), true);

$id              = $dados["id"]              ?? null;   // id_alunos
$nome            = $dados["nome"]            ?? "";
$cpf             = $dados["cpf"]             ?? "";
$ra              = $dados["ra"]              ?? "";
$dataNascimento  = $dados["data_nascimento"] ?? null;
$numeroCasa      = $dados["numero_casa"]     ?? 0;
$complemento     = $dados["complemento"]     ?? null;
$telefone        = $dados["telefone"]        ?? "";
$email           = $dados["email"]           ?? "";

if (empty($id) || empty($nome)) {
    http_response_code(400);
    echo json_encode(["sucesso" => false, "mensagem" => "id e nome são obrigatórios."]);
    exit;
}

try {
    $pdo->beginTransaction();

    // 1) Descobre o id_contatos desse aluno
    $stmtBusca = $pdo->prepare("SELECT id_contatos FROM alunos WHERE id_alunos = :id");
    $stmtBusca->bindValue(":id", $id);
    $stmtBusca->execute();
    $aluno = $stmtBusca->fetch(PDO::FETCH_ASSOC);
    $idContato = $aluno["id_contatos"] ?? null;

    // 2) Atualiza (ou cria, se não existir) o contato
    if ($idContato) {
        $sqlContato = "UPDATE contatos SET Telefone = :telefone, Email = :email WHERE id_contatos = :id_contatos";
        $stmtContato = $pdo->prepare($sqlContato);
        $stmtContato->bindValue(":telefone", $telefone);
        $stmtContato->bindValue(":email", $email);
        $stmtContato->bindValue(":id_contatos", $idContato);
        $stmtContato->execute();
    } else {
        $sqlContato = "INSERT INTO contatos (Telefone, Email) VALUES (:telefone, :email)";
        $stmtContato = $pdo->prepare($sqlContato);
        $stmtContato->bindValue(":telefone", $telefone);
        $stmtContato->bindValue(":email", $email);
        $stmtContato->execute();
        $idContato = $pdo->lastInsertId();
    }

    // 3) Atualiza os dados do aluno
    $sqlAluno = "UPDATE alunos SET
                    Nome = :nome,
                    NumeroDaCasa = :numero_casa,
                    Complemento = :complemento,
                    DataDeNascimento = :data_nascimento,
                    CPF = :cpf,
                    RA_aluno = :ra,
                    id_contatos = :id_contatos
                 WHERE id_alunos = :id";
    $stmtAluno = $pdo->prepare($sqlAluno);
    $stmtAluno->bindValue(":nome", $nome);
    $stmtAluno->bindValue(":numero_casa", $numeroCasa);
    $stmtAluno->bindValue(":complemento", $complemento);
    $stmtAluno->bindValue(":data_nascimento", $dataNascimento);
    $stmtAluno->bindValue(":cpf", $cpf);
    $stmtAluno->bindValue(":ra", $ra);
    $stmtAluno->bindValue(":id_contatos", $idContato);
    $stmtAluno->bindValue(":id", $id);
    $stmtAluno->execute();

    $pdo->commit();

    echo json_encode(["sucesso" => true, "mensagem" => "Aluno atualizado com sucesso."]);
} catch (PDOException $e) {
    $pdo->rollBack();
    http_response_code(500);
    echo json_encode(["sucesso" => false, "mensagem" => "Erro ao atualizar: " . $e->getMessage()]);
}
?>
