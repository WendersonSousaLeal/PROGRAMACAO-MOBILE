# App_Scholar — CRUD de Alunos (banco `escola` já existente)

Ajustado para o SEU banco real (`escola.sql` que você enviou), tabela `alunos` +
tabela `contatos` (telefone/e-mail), com o campo `status` ('A'/'I') que você já tinha.

- Pasta da API: `app_scholar_api`
- IP do computador: `SEU-IP`

## 1. Banco de dados
Você **não precisa criar nada** — seu banco `escola` já existe e já tem o campo `status`.
Só confirme que ele está importado no phpMyAdmin do seu XAMPP.

## 2. API PHP
1. Copie a pasta `app_scholar_api` inteira para `C:\xampp\htdocs\`.
   Resultado: `C:\xampp\htdocs\app_scholar_api\...`
2. Teste no navegador do computador:
   - `http://localhost/app_scholar_api/teste_conexao.php` → "Conexão realizada com sucesso!"
   - `http://localhost/app_scholar_api/alunos.php` → JSON com os alunos ativos
3. Teste pelo celular (mesma rede Wi-Fi):
   - `http://SEU-IP/app_scholar_api/alunos.php`

## 3. Campos usados (baseados no seu banco)
- `id` (id_alunos), `nome`, `cpf`, `ra`, `data_nascimento`, `numero_casa`,
  `complemento`, `telefone`, `email`, `status`
- `telefone` e `email` ficam na tabela `contatos`, ligada por `id_contatos`.
  A API cuida de criar/atualizar o contato automaticamente ao cadastrar/editar.
- Ao cadastrar, informe a data no formato `AAAA-MM-DD` (ex.: `2010-05-20`).

## 4. Expo Snack
1. Copie os arquivos de `app_scholar_snack` para o seu projeto no Snack, mantendo a estrutura:
   - `App.js`
   - `src/services/api.js`
   - `src/screens/ConsultaAlunosScreen.js`
   - `src/screens/CadastroAlunoScreen.js`
   - `src/screens/EditarAlunoScreen.js`
2. Garanta as dependências: `@react-navigation/native`, `@react-navigation/native-stack`,
   `react-native-screens`, `react-native-safe-area-context`.
3. Abra pelo Expo Go no celular, na mesma rede Wi-Fi do PC.
4. Na tela "Alunos", toque em **Buscar alunos**.

## 5. Fluxo (regra da exclusão lógica)
App_Scholar (fetch) → API PHP (PDO) → MySQL (`escola`)

- `alunos.php` → READ → `SELECT ... WHERE status = 'A'` (com JOIN em `contatos`)
- `cadastrar_aluno.php` → CREATE → insere em `contatos` e depois em `alunos` (POST)
- `editar_aluno.php` → UPDATE → atualiza `alunos` e `contatos` (PUT)
- `desativar_aluno.php` → EXCLUSÃO LÓGICA → `UPDATE alunos SET status = 'I'` (PUT)
  **Nunca** é usado `DELETE FROM alunos`.

## 6. Se algo não funcionar
- Confirme usuário/senha do MySQL em `conexao.php` (padrão XAMPP: `root` / senha vazia).
- Se o IP do PC mudar, atualize `src/services/api.js` no Snack.
- Celular e PC precisam estar na mesma rede Wi-Fi, com o Apache ativo no XAMPP.
