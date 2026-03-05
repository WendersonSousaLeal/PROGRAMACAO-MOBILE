Algoritmo "ATIVIDADE 18"

Var
login, senha: caractere

tentativa, maxtentativa : inteiro

Inicio
      maxtentativa <- 3
      tentativa <- 0

      Escreva("Digite o nome de usuário: ")
      leia(login)

      Escreva("Digite sua senha: ")
      leia(senha)
      tentativa <- tentativa + 1

      se (login = "admin") e (senha = "1234") entao
         escreval("Login realizado com sucesso!")
      senao
         escreval("Login/Senha inválidos. tentativa: ", tentativa, "/", maxtentativa)

      fimse


   se (login = "admin") e (senha = "1234") ou (tentativa = maxtentativa)entao

   se (login <> "admin") ou (senha <> "1234") entao
      escreval("Número máximo de tentativas atingido. Acesso bloqueado.")
   fimse
fimse

Fimalgoritmo