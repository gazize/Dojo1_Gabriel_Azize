#language: pt
#utf-8


Funcionalidade: Cadastro de empregado
 Eu como administrador do site 
 Quero cadastrar ou atualizar um novo empregado
 Para finalizar a contratacao

@cadastrar
 Cenario: Preencher dados
  Dado que eu esteja na home do site opensource
  Quando eu logar como administrador
  E estiver na aba Candidates
  Entao preencho os dados do novo empregado


@atualizar
 Cenario: Atualizar dados
  Dado que eu esteja logado como administrador
  Quando clicar no nome do empregado contido na lista
  E editar dados do empregado
  Entao o sistema deverá permitir a alteracao dos dados

  #No Records Found