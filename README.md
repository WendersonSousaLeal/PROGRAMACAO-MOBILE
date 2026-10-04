# Programação Mobile

## Sobre o projeto

Repositório que reúne os projetos e atividades desenvolvidos no curso técnico em Desenvolvimento de Sistemas (Etec São José dos Campos): o aplicativo App_Scholar, um site de academia, uma calculadora de média, um portfólio pessoal e listas de exercícios de lógica de programação.

O principal projeto é o **App_Scholar**, um aplicativo mobile de gestão escolar desenvolvido em React Native com Expo. Ele permite cadastrar, consultar e editar os dados de uma escola, como alunos, professores, turmas, cursos, disciplinas, matrículas, responsáveis, avaliações, coordenadores e boletins.

O aplicativo consome o banco de dados `escola`, modelado no repositório [MDBD](https://github.com/WendersonSousaLeal/MDBD), por meio de uma API em PHP.

## Funcionalidades

**Aplicativo (telas de interface):** tela inicial, tela Sobre e telas de cada módulo, com navegação entre elas.

| Módulo | Consultar | Cadastrar | Editar |
|---|---|---|---|
| Alunos | Sim | Sim | Sim |
| Professores | Sim | Sim | Sim |
| Turmas | Sim | Sim | Sim |
| Cursos | Sim | Sim | Sim |
| Disciplinas | Sim | Sim | Sim |
| Responsáveis | Sim | Sim | Sim |
| Coordenadores | Sim | Sim | Sim |
| Matrículas | Sim | Sim | - |
| Avaliações | Sim | Sim | - |
| Boletins | Sim | - | - |

**Integração com a API (módulo de alunos):**

- Listagem de alunos
- Cadastro de aluno
- Edição de aluno
- Desativação de aluno (o registro é mantido no banco com a situação inativa)

**Situação atual:** apenas o módulo de alunos está integrado à API e ao banco de dados. Os demais módulos possuem as telas de interface e a navegação, e a integração com a API será feita nas próximas atualizações.

## Próximas etapas

- Criar na API as operações dos módulos de professores, turmas, cursos, disciplinas, matrículas, responsáveis, avaliações, coordenadores e boletins
- Integrar as telas desses módulos à API

## Tecnologias utilizadas

- React Native
- Expo
- React Navigation (Native Stack)
- React Native Paper
- React Native Screens
- React Native Safe Area Context
- Expo Vector Icons
- HTML, CSS e JavaScript (site AcadeFit, calculadora de média e portfólio)
- VisuAlg (listas de exercícios)
- PHP (API de acesso ao banco)
- MySQL / MariaDB
- Git
- GitHub

## Estrutura do projeto

```
PROGRAMACAO-MOBILE/
├── app_scholar/                 # Aplicativo mobile App_Scholar (React Native / Expo)
├── app_scholar_api/             # API em PHP que acessa o banco de dados
├── Banco de Dados Escola/       # Scripts do banco de dados `escola`
├── site-academia-acadefit/      # Site da academia AcadeFit
├── calculadora-media/           # Calculadora de média em JavaScript
├── Atividade Portfólio/
│   └── Meu_Portfolio-main/
├── Lista de exercicio 1/
├── Lista de exercício 2/
└── README.md
```

- **app_scholar/**: código do aplicativo. A navegação está no `App.js`; as telas ficam em `screens/`, os componentes reutilizáveis em `components/`, a comunicação com a API em `services/` e as imagens em `assets/`. A pasta também contém o arquivo `Vídeo Explicativo` e um README próprio.
- **app_scholar_api/**: API em PHP utilizada pelo aplicativo para acessar o banco de dados.
  - `conexao.php`: conexão com o banco `escola`.
  - `cors.php`: configuração de acesso da API pelo aplicativo.
  - `alunos.php`, `cadastrar_aluno.php`, `editar_aluno.php` e `desativar_aluno.php`: operações do módulo de alunos.
  - `teste_conexao.php`: teste da conexão com o banco.
- **Banco de Dados Escola/**: scripts SQL do banco `escola`. A modelagem completa está no repositório [MDBD](https://github.com/WendersonSousaLeal/MDBD).
- **Lista de exercicio 1/** e **Lista de exercício 2/**: exercícios de lógica de programação desenvolvidos em VisuAlg.
- **site-academia-acadefit/**: site da academia **AcadeFit | Supere seus limites**.
- **calculadora-media/**: calculadora de média desenvolvida em JavaScript.
- **Atividade Portfólio/Meu_Portfolio-main/**: portfólio pessoal de Wenderson Sousa Leal.

## Requisitos

- Node.js e npm
- Expo (aplicativo Expo Go no celular ou um emulador)
- Servidor PHP e MySQL/MariaDB (por exemplo, XAMPP) para a API e o banco `escola`
- Git

## Como executar

1. Clone o repositório:
   ```
   git clone https://github.com/WendersonSousaLeal/PROGRAMACAO-MOBILE.git
   ```
2. Inicie o servidor Apache e o MySQL (por exemplo, pelo XAMPP).
3. Importe o script SQL da pasta `Banco de Dados Escola` pelo phpMyAdmin para criar o banco `escola`.
4. Copie a pasta `app_scholar_api` para o diretório do servidor (no XAMPP, `htdocs`) e confira os dados de conexão no arquivo `conexao.php`. Para testar, acesse `teste_conexao.php` pelo navegador (por exemplo, `http://localhost/app_scholar_api/teste_conexao.php`).
5. Acesse a pasta do aplicativo e instale as dependências:
   ```
   cd PROGRAMACAO-MOBILE/app_scholar
   npm install
   ```
6. Configure o endereço da API no arquivo `app_scholar/services/api.js`, alterando a constante `API_URL` para o IP da sua máquina na rede (o celular não acessa `localhost`). O celular e o computador devem estar na mesma rede Wi-Fi.
7. Inicie o aplicativo:
   ```
   npx expo start
   ```
8. Abra no celular com o Expo Go (leitura do QR Code) ou em um emulador.

## Autor

Wenderson Sousa Leal
