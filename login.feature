#language:pt

Funcionalidade: Autenticação do login 
Como cliente da loja EBAC-Shop
Quero me autenticar
Para visualizar meus pedidos

Contexto: 
Dado que eu acesse a página de Login "autenticação" da loja EBAC-Shop direcionar para Checkout

Cenário: Ao Colocar os dados válidos deve ser direcionado para a tela de checkout 
Quando eu digitar o usuário: "marcinho@ebac.com.br"
E a senha "senha@123"
Então deve abrir a página de "Checkout" 


Cenário: Ao inserir um dos campos inválidos ou deixa em "branco" deve exibir uma mensagem de alerta “Usuário ou senha inválidos” ou "falta preencher oa dados"
Quando eu digitar <usuario>
E a <senha>
Então deve direcionar para a tela de <Checkout> do usuario. 

  Exemplos: 
  | usuario                 | senha       | mensagem                                 |
  | "marcinho@ebac.com.br"  | "senha@123" | "Bem vindo!"                             |
  | "marcinho@ebac.com.br"  | "zenha!123" | "Usuário com senha ou login incorretos!" |
  | "joao@zeze.com.br"      | "ads@123"   | "Usuário inexistente!"                   |
  | ""                      | ""          | "falta preencher os dados "


