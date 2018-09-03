#language: pt
#utf-8

@busca @appVersion
Funcionalidade: Busca
  Como cliente
  Eu quero buscar produtos
  Para visualizar mais informações sobre eles

Contexto: Acessar a loja e realizar login
  Dado que eu esteja na home do site Google

@positivo @smokeTest
Cenário: Realizar Busca Por Um Produto Valido
  Quando eu realizar busca por "sei la"
  Então devo estar na tela de busca valida