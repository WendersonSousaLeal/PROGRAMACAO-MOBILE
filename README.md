# Programação Mobile

## Sobre o projeto

Repositório que reúne as atividades, listas de exercícios e projetos da disciplina de Programação para Dispositivos Móveis do curso técnico em Desenvolvimento de Sistemas (Etec São José dos Campos).

O principal projeto é o **App_Scholar**, um aplicativo mobile de gestão escolar desenvolvido em React Native com Expo. Ele permite cadastrar, consultar e editar os dados de uma escola, como alunos, professores, turmas, cursos, disciplinas, matrículas, responsáveis, avaliações, coordenadores e boletins.

O aplicativo consome o banco de dados `escola`, modelado no repositório [MDBD](https://github.com/WendersonSousaLeal/MDBD), por meio de uma API em PHP.

## Funcionalidades

O App_Scholar possui uma tela inicial (Home), uma tela Sobre e módulos de gerenciamento com navegação entre as telas:

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

- Navegação entre as principais telas do aplicativo
- Tela Sobre com informações do aplicativo

[PREENCHER: se houver exclusão de registros, busca/filtros ou outros recursos nas telas de consulta, acrescente aqui. Liste apenas o que está implementado.]

## Tecnologias utilizadas

- React Native
- Expo
- React Navigation (Native Stack)
- React Native Paper
- React Native Screens
- React Native Safe Area Context
- Expo Vector Icons
- PHP (API de acesso ao banco)
- MySQL / MariaDB
- Git
- GitHub

## Estrutura do projeto

```
PROGRAMACAO-MOBILE/
├── Atividade 4/
├── Atividade 5/
├── Atividade Portfólio/
│   └── Meu_Portfolio-main/
├── Lista de exercicio 1/
├── Lista de exercício 2/
└── README.md
```

- **Lista de exercicio 1/** e **Lista de exercício 2/**: [PREENCHER: assunto das listas]
- **Atividade 4/** e **Atividade 5/**: [PREENCHER: o que foi desenvolvido]
- **Atividade Portfólio/Meu_Portfolio-main/**: [PREENCHER: descrição do portfólio e tecnologias]

Estrutura do código do App_Scholar:

```
app_scholar/
├── App.js          # Navegação (stack) entre todas as telas
├── screens/        # Telas de consulta, cadastro e edição de cada módulo
└── package.json    # Dependências do projeto
```

[PREENCHER: informe em qual pasta do repositório está o App_Scholar. Se ainda não foi enviado, faça o commit do código.]

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
2. Acesse a pasta do App_Scholar:
   ```
   cd PROGRAMACAO-MOBILE/[PREENCHER: pasta do app]
   ```
3. Instale as dependências:
   ```
   npm install
   ```
4. Importe o banco `escola` (script SQL disponível no repositório [MDBD](https://github.com/WendersonSousaLeal/MDBD)) e inicie o servidor com a API em PHP.
5. Configure o endereço da API no aplicativo. [PREENCHER: arquivo e variável onde fica a URL da API. Não publique senhas ou dados sensíveis.]
6. Inicie o aplicativo:
   ```
   npx expo start
   ```
7. Abra no celular com o Expo Go (leitura do QR Code) ou em um emulador.

## Autor

Wenderson Sousa Leal
