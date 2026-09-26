# App_Scholar

Sistema acadêmico escolar desenvolvido em **React Native (Expo)**, com back-end em **PHP** e banco de
dados **MySQL**. Projeto acadêmico da disciplina de Desenvolvimento de Sistemas (Etec).

## O que o app faz

O App_Scholar gerencia o dia a dia acadêmico de uma escola: alunos, professores, coordenadores, cursos,
disciplinas, turmas, matrículas, avaliações, responsáveis e boletins. A partir da tela inicial (Home), o
usuário navega para cada um desses módulos, onde pode consultar, cadastrar e editar registros — e, no
caso dos alunos, também "excluir" (de forma lógica, sem apagar o dado do banco).

## Tecnologias

| Camada | Tecnologia |
|---|---|
| Front-end | React Native + Expo (Expo Snack) |
| Navegação | React Navigation (Native Stack) |
| Back-end / API | PHP + PDO |
| Banco de dados | MySQL (rodando em XAMPP) |
| Comunicação | `fetch()` (HTTP), JSON |

## Arquitetura

```
App_Scholar (React Native / Expo)
      | fetch()
      v
API PHP (app_scholar_api) — protegida por cors.php
      | PDO
      v
MySQL (banco: escola)
```

O aplicativo nunca acessa o banco de dados diretamente. Toda operação passa pela API PHP, que é a única
camada com permissão de conversar com o MySQL.

## Estrutura de pastas do projeto (Expo Snack)

```
App.js                          -> registra todas as rotas de navegação
src/
  services/
    api.js                      -> endereço (IP) da API PHP
  screens/
    HomeScreen.js                -> menu principal
    SobreScreen.js                -> sobre o app
    ConsultaAlunosScreen.js       -> lista, edita e exclui alunos
    CadastroAlunoScreen.js        -> cadastra um novo aluno
    EditarAlunoScreen.js          -> edita um aluno existente
    ... (o mesmo padrão Consulta/Cadastro/Editar se repete para
         Professores, Coordenadores, Cursos, Disciplinas, Turmas
         e Responsáveis)
    ConsultaMatriculasScreen.js / CadastroMatriculaScreen.js
    ConsultaAvaliacoesScreen.js / CadastroAvaliacaoScreen.js
    ConsultaBoletinsScreen.js     -> somente consulta
```

## Módulos e operações disponíveis

| Módulo | Consultar | Cadastrar | Editar | Excluir |
|---|---|---|---|---|
| Alunos | ✅ | ✅ | ✅ | ✅ (lógica) |
| Professores | ✅ | ✅ | ✅ | — |
| Coordenadores | ✅ | ✅ | ✅ | — |
| Cursos | ✅ | ✅ | ✅ | — |
| Disciplinas | ✅ | ✅ | ✅ | — |
| Turmas | ✅ | ✅ | ✅ | — |
| Responsáveis | ✅ | ✅ | ✅ | — |
| Matrículas | ✅ | ✅ | — | — |
| Avaliações | ✅ | ✅ | — | — |
| Boletins | ✅ | — | — | — |

**Só o módulo de Alunos tem exclusão**, e ela é sempre **lógica**: o registro nunca é apagado do banco.
Em vez de `DELETE`, o campo `status` do aluno muda de `'A'` (ativo) para `'I'` (inativo), e a consulta
principal passa a ignorá-lo automaticamente (`WHERE status = 'A'`).

## Como o app se comunica com o banco

1. O usuário interage com uma tela (ex.: toca em "Buscar alunos").
2. A tela chama `fetch()` para um endpoint da API (ex.: `alunos.php`), usando o método HTTP adequado:
   - `GET` para consultar
   - `POST` para cadastrar
   - `PUT` para editar ou excluir (logicamente)
3. O arquivo PHP correspondente recebe a requisição, usa **PDO com prepared statements** (`prepare()` +
   `bindValue()` + `execute()`) para conversar com o MySQL de forma segura.
4. O PHP devolve os dados em **JSON**.
5. O app recebe a resposta, guarda em um estado (`useState`) e a tela é redesenhada automaticamente.

## Banco de dados

Banco: `escola` (MySQL). Principais tabelas: `alunos`, `professores`, `coordenadores`, `cursos`,
`disciplinas`, `turmas`, `matriculas`, `avaliacoes`, `boletins`, `responsaveis`, além de tabelas de apoio
reaproveitadas por várias entidades: `contatos` (telefone/e-mail), `ruas`, `bairros`, `cidade`, `uf`
(endereço) e `formacoes` (formação acadêmica de professores/coordenadores).

## Como rodar

1. **API (XAMPP):** copie a pasta `app_scholar_api` para `C:\xampp\htdocs\` e inicie Apache + MySQL.
2. **App (Expo Snack):** cole os arquivos deste projeto no Snack, mantendo a estrutura de pastas acima.
3. Ajuste o IP em `src/services/api.js` para o IPv4 atual do computador (`ipconfig` no Windows).
4. Abra o app pelo **Expo Go no celular**, conectado à mesma rede Wi-Fi do computador — a prévia Web do
   Snack (HTTPS) não consegue falar com a API local (HTTP puro) por uma restrição de segurança do
   navegador (Mixed Content).

## Segurança e limitações (projeto didático)

- CORS liberado para qualquer origem (`Access-Control-Allow-Origin: *`) — adequado para o ambiente local
  de estudo, mas numa aplicação real em produção isso deveria ser restrito a domínios específicos.
- Não há autenticação de usuário nem HTTPS — fora do escopo desta atividade, que tem foco na comunicação
  básica entre app, API e banco.
- Alguns relacionamentos (ex.: curso de uma turma, aluno de uma matrícula) são informados por ID digitado
  manualmente, sem um seletor de nomes — simplificação proposital para manter o projeto enxuto.
