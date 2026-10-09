# App_Scholar — CRUD de Alunos

API em **PHP (PDO)** que conecta o aplicativo **App_Scholar** (React Native / Expo) ao banco MySQL/MariaDB `escola`.
Nesta versão a API cobre apenas o módulo **Alunos**; os demais módulos (Professores, Turmas, Cursos etc.) virão nas próximas atualizações.

Trabalha com a tabela `alunos` e a tabela `contatos` (telefone e e-mail), usando o campo `status` ('A' = ativo, 'I' = inativo) para a **exclusão lógica**.

- Pasta da API: `app_scholar_api`
- IP do computador: `SEU-IP` (veja como descobrir na seção 6)

## Tecnologias

- PHP 8+ com PDO
- MySQL / MariaDB (XAMPP + phpMyAdmin)
- React Native com Expo (Expo Snack / Expo Go)

## 1. Banco de dados

Não é necessário criar nada: o banco `escola` já existe e a tabela `alunos` já possui o campo
`status CHAR(1) NOT NULL DEFAULT 'A'`, com CHECK aceitando somente `'A'` ou `'I'`.
Basta confirmar que o banco está importado no phpMyAdmin do XAMPP.

## 2. API PHP

1. Copie a pasta `app_scholar_api` inteira para `C:\xampp\htdocs\`.
   Resultado: `C:\xampp\htdocs\app_scholar_api\...`
2. Inicie o **Apache** e o **MySQL** no painel do XAMPP.
3. Teste no navegador do computador:
   - `http://localhost/app_scholar_api/teste_conexao.php` → "Conexão realizada com sucesso!"
   - `http://localhost/app_scholar_api/alunos.php` → JSON com os alunos ativos
4. Teste pelo celular (mesma rede Wi-Fi):
   - `http://SEU-IP/app_scholar_api/alunos.php`

### Estrutura de pastas

```
app_scholar_api/
├── conexao.php           # conexão PDO (usuário/senha do MySQL)
├── teste_conexao.php     # verifica se a conexão funciona
├── alunos.php            # READ   - lista alunos ativos (com JOIN em contatos)
├── cadastrar_aluno.php   # CREATE - insere em contatos e depois em alunos
├── editar_aluno.php      # UPDATE - atualiza alunos e contatos
├── desativar_aluno.php   # exclusão lógica - status = 'I'
└── README.md
```

## 3. Campos usados (baseados no banco)

- `id` (coluna `id_alunos`), `nome`, `cpf`, `ra`, `data_nascimento`, `numero_casa`,
  `complemento`, `telefone`, `email`, `status`
- `telefone` e `email` ficam na tabela `contatos`, ligada por `id_contatos`.
  A API cria/atualiza o contato automaticamente ao cadastrar/editar o aluno.
- A data deve ser enviada no formato `AAAA-MM-DD` (ex.: `2010-05-20`).

## 4. Expo Snack

1. Copie os arquivos de `app_scholar_snack` para o projeto no Snack, mantendo a estrutura:
   - `App.js`
   - `src/services/api.js`
   - `src/screens/ConsultaAlunosScreen.js`
   - `src/screens/CadastroAlunoScreen.js`
   - `src/screens/EditarAlunoScreen.js`
2. Garanta as dependências: `@react-navigation/native`, `@react-navigation/native-stack`,
   `react-native-screens`, `react-native-safe-area-context`.
3. Em `src/services/api.js`, ajuste o endereço base para `http://SEU-IP/app_scholar_api`.
4. Abra pelo Expo Go no celular, na mesma rede Wi-Fi do computador.
5. Na tela "Alunos", toque em **Buscar alunos**.

## 5. Fluxo (regra da exclusão lógica)

App_Scholar (fetch) → API PHP (PDO) → MySQL (`escola`)

| Arquivo | Operação | Método | O que faz |
|---|---|---|---|
| `alunos.php` | READ | GET | `SELECT ... WHERE status = 'A'`, com JOIN em `contatos` |
| `cadastrar_aluno.php` | CREATE | POST | insere em `contatos` e depois em `alunos` |
| `editar_aluno.php` | UPDATE | PUT | atualiza `alunos` e `contatos` |
| `desativar_aluno.php` | EXCLUSÃO LÓGICA | PUT | `UPDATE alunos SET status = 'I'` |

**Nunca** é usado `DELETE FROM alunos`: os dados são preservados para manter o histórico
(matrículas, boletins, notas) e o aluno pode ser reativado alterando o `status` de volta para `'A'`.

## 6. Se algo não funcionar

- Confirme usuário e senha do MySQL em `conexao.php` (padrão do XAMPP: `root` e senha vazia).
- Para descobrir o IP do computador, rode `ipconfig` no Prompt de Comando e use o **Endereço IPv4**
  da rede Wi-Fi (ex.: `192.168.0.15`).
- Se o IP do computador mudar, atualize `src/services/api.js` no Snack.
- Celular e computador precisam estar na mesma rede Wi-Fi, com o Apache ativo no XAMPP.
- Se o celular não acessar o endereço, verifique se o Firewall do Windows está liberando o Apache (porta 80).
- O Snack aberto no navegador (web) não consegue acessar um endereço `http://` de IP local; use o Expo Go
  no celular ou exponha a API com HTTPS usando o ngrok (`ngrok http 80`) e troque o endereço base em `api.js`.
