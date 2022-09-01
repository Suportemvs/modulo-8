      # language: pt
      Funcionalidade: tela de cadastro
      Como cliente da loja EBAC-Shop
      Quero conclui o cadastro
      Para finalizar meus pedidos e compras

      Contexto:
      Dado que eu acesse a plataforma da loja EBAC-Shop

      Cenário: Cenario válida
      Quando eu preencher todos os campos obrigatórios do cadastro
      E preencher todos requisitos do cadastro
      Então devo conclui as minhas compras

      Cenário: Cenario inválida
      Quando eu preencher todos os campos obrigatórios do cadastro
      E tentar concluir o cadastro
      Então o sistema devera conclui o cadastro

      Cenário: Cenario inválida
      Quando eu digitar o email: "marcinho@ebac.com.br"
      E deixar algum campo obrigatório em branco
      Então deve exibir uma mensagem de alerta "E-mail incorreto e campos obrigatórios inválidos!"

      Cenário: E-mail invalido
      Quando eu preencher os campos obrigatórios
      E inserir o E-mail "marcinho@ebac.com.br"
      Então deve exibir uma mensagem de alerta "Campos obrigatórios inválidos!"

      Esquema do Cenario: E-mail inválido
      Quando eu digitar o <usuario>
      Então deve exibir a <mensagem> de alerta


      Exemplos:
      | usuarios             | email    |
      | joao@ebac.com.br     | invalido |
      | marcinho@ebac.com.br | valido   |
      | tchuca@ebac.com.br   | invalido |