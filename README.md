Teste QA_VR

Projeto criado para realização de teste automatizado consulta de CEP.

# Regras:

1 - Implementar os testes com Cucumber + Ruby
2 - Enviar o teste em um repositório público do Github ou similar
3 - 3 dias para resolver o exercício

# Teste:
1 - Criar uma funcionalidade para consultar os dados de um endereço a partir de um CEP.

2 - Cenários:
    2.1 - Criar um cenário de sucesso na consulta, printando o código do IBGE do endereço no
stdout.
        2.2 - Criar um cenário passando um CEP inválido

# Dicas:
Utilizar a API https://viacep.com.br/ws/01001000/json/ para consulta;
Gem HTTParty pode ser uma ajuda incrível para trabalhar com as requisições HTTP

# Passo de um clone no projeto

'$ git clone https://github.com/anadsonpassos/cep_vr.git' clona o projeto do servidor

# Passo para entrar na pasta do projeto

'$ cd cep_vr/tests' Entra na pasta do diretório

# Pré-Requisitos

Instalar o Ruby.

Instalar as gems do projeto:
Capybara, SitePrism e HTTParty

Instalação

Instalar bibliotecas:
bundle install

Execução de Testes

Executar todos os cenários:
cucumber 
Executar individualmente por tag:
cucumber -t @nometag


