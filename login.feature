#language:pt

Funcionalidade: tela de login
Como cliente da loja EBAC-Shop
Quero me autenticar
Para visualizar meus pedidos

Contexto: 
Dado que eu acesse a página de autenticação da loja EBAC-Shop direcionar para Checkout

Cenário: Autenticação válida
Quando eu digitar o usuário: "marcinho@ebac.com.br"
E a senha "senha@123"
Então deve abrir a página de "Checkout" com a mensagem de boas vindas "Bem vindo"

Cenário: Autenticação inválida
Quando eu digitar o usuário: "marcinho@ebac.com.br"
E a senha "zenha@123"
Então deve exibir uma mensagem de alerta "Usuário com senha ou login incorretos!"

Cenário: Conta inexistente
Quando eu digitar o usuário: "joao@ebac.com.br"
E a senha "ads@123"
Então deve exibir uma mensagem de alerta "Usuário inexistente!"

Esquema do Cenário: Autenticar multiplos usuários
Quando eu digitar <usuario>
E a <senha>
Então deve direcionar para a tela de <Checkout> do usuario. 

  Exemplos: 
  | usuario                 | senha       | mensagem                                 | direcionar |
  | "marcinho@ebac.com.br"  | "senha@123" | "Bem vindo!"                             | "Checkout" |
  | "marcinho@ebac.com.br"  | "zenha!123" | "Usuário com senha ou login incorretos!" | "Login"    |
  | "joao@zeze.com.br"      | "ads@123"   | "Usuário inexistente!"                   | "Cadastro" |
