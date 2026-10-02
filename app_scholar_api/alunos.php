<?php
require_once "conexao.php";
header("Content-Type: application/json; charset=UTF-8");

$sql = "SELECT
            a.id_alunos        AS id,
            a.Nome             AS nome,
            a.CPF              AS cpf,
            a.RA_aluno         AS ra,
            a.DataDeNascimento AS data_nascimento,
            a.NumeroDaCasa     AS numero_casa,
            a.Complemento      AS complemento,
            c.Telefone         AS telefone,
            c.Email            AS email,
            a.status           AS status
        FROM alunos a
        LEFT JOIN contatos c ON a.id_contatos = c.id_contatos
        WHERE a.status = 'A'
        ORDER BY a.Nome";
$stmt = $pdo->query($sql);
$alunos = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($alunos);
?>
