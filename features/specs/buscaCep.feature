#encoding: utf-8
#language: pt

Funcionalidade: Consultar CEP
Eu como usuário do sistema consulta por CEP
Quero realizar uma consulta de CEP
Para validar o endereço, e verificar CEP valido e inválido

@cep_Valido
Cenário: Consultar dados de Endereço pelo CEP 
  Dado que eu faça uma busca pelo o CEP "01001-000" 
  Quando obter os dados do endereço solicitado 
  Então o sistema retorna status de sucesso 200

@codigo_Ibge
Cenário: Obter o retorno do Código do IBGE
  Dado que eu faça uma busca pelo o CEP "01001-000"
  Então exibo o código de retorno do IBGE do cep consultado

@cep_Invalido
Cenário: Consulta com CEP Inválido 
  Dado que eu faça uma busca pelo o CEP "" 
  Então o sistema retorna status de erro 400