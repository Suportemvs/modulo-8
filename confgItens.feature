# language: pt
Funcionalidade: tela de seleção de produtos
Como cliente no site EBAC-Shop
configurar meu produto de acordo com meu tamanho e quantidade

Contexto: 
Dado alterar as configurações de um produto, tamanho, cor e quantidade

Cenário: Cadastra produto com sucesso 
Quando escolher a cor do produto
E adiciono um total de "10" itens
Então deve exibir uma mensagem de sucesso "Itens adicionados com sucesso!"

Cenário: LImite de "10" produtos
Quando escolher a cor do produto
E adiciono 11 itens ao carrinho
Então deve exibir uma mensagem de alerta "Limite de itens Excedido!"

Esquema do Cenário: Alterar vários produtos
Quando eu mudar a <cor> e <tamanho>
E incluir a <qtde>
Então deve exibir a <mensagem> de sucesso

 Exemplos: 
  | cor       |tamanho     |qtde  | mensagem                                      |
  | "rosa"    |   "M"      | "9"  | "Itens adicionados ao carrinhos com sucesso!" |
  | ""        |   "GG"     | "10" | "cor nao foi adicionado!"                     |
  | ""        |   ""       | ""   | "Cor e Tamanho e Quantidades obrigatórios!"   |
