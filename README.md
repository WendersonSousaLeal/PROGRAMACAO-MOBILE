# Programação Mobile — Atividades

## Sobre o repositório

Este repositório reúne as atividades práticas desenvolvidas na disciplina de **Programação Mobile**, do curso técnico em Desenvolvimento de Sistemas (Etec, unidade São José dos Campos). Cada pasta corresponde a uma atividade independente, com proposta e tecnologia próprias. O destaque é o **App_Scholar**, um aplicativo completo em React Native (Expo) que consome uma API em PHP ligada ao banco `escola`.

## Estrutura do repositório

```
PROGRAMACAO-MOBILE/
├── Atividade 4/                          # Landing page "AcadeFit" (site institucional de academia)
├── Atividade 5/                          # Calculadora de média de notas
├── Atividade Portfólio/
│   └── Meu_Portfolio-main/               # Portfólio pessoal multi-página
├── Lista de exercicio 1/                 # 25 algoritmos em Portugol/VisuAlg
├── Lista de exercício 2/                 # 20 algoritmos em Portugol/VisuAlg
├── app_scholar/                          # App_Scholar (React Native + Expo)
└── README.md
```

- **Atividade 4** — página única com seções Home, Sobre, Serviços e Contato (formulário), com ícones via Font Awesome.
- **Atividade 5** — calculadora de média de duas notas, com validação de intervalo (0–10) e retorno de aprovado/recuperação/reprovado.
- **Atividade Portfólio** — portfólio pessoal com páginas de Sobre, Experiência, Interesses, Acadêmica e Contato. Publicado em: https://wendersonsousaleal.github.io/Meu_Portfolio/
- **Lista de exercício 1 e 2** — exercícios de lógica de programação resolvidos em pseudocódigo (arquivos `.ALG`).
- **app_scholar** — sistema acadêmico escolar que gerencia alunos, professores, coordenadores, cursos, disciplinas, turmas, matrículas, avaliações, responsáveis e boletins, com telas de consulta, cadastro e edição. Contém o próprio `README.md` com a arquitetura, os módulos e as instruções de execução, além do arquivo `Vídeo Explicativo` com o link do vídeo de apresentação.

## Tecnologias utilizadas

- HTML5 e CSS3 (Atividade 4, Atividade 5, Portfólio)
- JavaScript (Atividade 5)
- Font Awesome via CDN (Atividade 4)
- Portugol / VisuAlg (Listas de exercício 1 e 2)
- React Native + Expo, React Navigation e React Native Paper (App_Scholar)
- PHP (API) e MySQL/MariaDB via XAMPP (App_Scholar)

## Como executar

- **Atividade 4, Atividade 5 e Portfólio**: abrir o respectivo `index.html` diretamente no navegador.
- **Listas de exercício 1 e 2**: abrir os arquivos `.ALG` no VisuAlg (ou equivalente, como o Portugol Studio) para executar os algoritmos.
- **app_scholar**: seguir o passo a passo em [`app_scholar/README.md`](app_scholar/README.md). Resumo: subir a API PHP e o MySQL no XAMPP, ajustar o IP em `services/api.js` e abrir o app pelo Expo Go na mesma rede Wi-Fi.

## Banco de dados do App_Scholar

O banco `escola` usado pelo App_Scholar (diagramas, scripts SQL e dicionário de dados) está versionado no repositório [MDBD](https://github.com/WendersonSousaLeal/MDBD).

## Autor

Wenderson Sousa Leal
