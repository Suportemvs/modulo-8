      # language: pt
      
      Funcionalidade: tela de cadastro
      Como cliente da loja EBAC-Shop
      Quero conclui o cadastro
      Para finalizar meus pedidos e compras

      Contexto:
      Dado Quero concluir minhas compras na loja EBAC-SHOP
      
      Cenário: 1:deve ser preenchidos com os dados do cliente 
        Quando eu preencher todos os campos obrigatórios do cadastro
         Exemplo:
            | Nome               | "Marcio"                 |
            | Sobrenome          | "Vicente"                |
            | Endereço           | "Rua sem fundo"          |
            | Cidade             | "Brejo fundo"            |
            | CEP                | "37050-050"              |
            | Telefone           | "(21) 9 9999-1346"       |
            | Endereço de e-mail | "marcinho@ebac.com.br"   |

        E preencher todos requisitos do cadastro "Validos"
        Então vai concluir o meu cadastro

      
      Cenário: 2: Não deve aceitar campo do E-mail e a plataforma deve emitir uma mensagem de erro "Formato de e-mail inválido!"  
        Quando eu digitar o email: "marcinho@ebac.com.br"
        E deixar algum campo obrigatório em branco
        Então deve exibir uma mensagem de alerta "E-mail incorreto e campos obrigatórios inválidos! e "Formato de e-mail inválido!"

        Cenário: 3: Não deve ser aceito o sistema logar sem os dados corretos. 
        Quando eu digitar o <usuario>.
        Então deve exibir a <mensagem> de alerta "Campos obrigatórios inválidos!".
              
        Exemplo:   
            | Nome               | "Marcio"                 | "Dados confere"      |
            | Sobrenome          | "Vicente"                | "Dados confere"      |
            | Endereço           | ""                       | "Dados nao confere"  |
            | Cidade             | "Brejo fundo"            | "Dados confere"      |
            | CEP                | "37050-050"              | "Dados confere"      |
            | Telefone           | "(21) 9 9999-1349"       | "Dados nao confere"  |
            | Endereço de e-mail | "marcinho@ebac.com.br"   | "Dados confere"      |
