# DESAFIO ÓRULO

## Objetivo do Desafio

Desafio para Pessoa Desenvolvedora Rails

O desafio aqui proposto consiste no desenvolvimento de um website onde um usuário possa favoritar seus imóveis e visualizar lista paginada de todos os imóveis onde os favoritados permanecem marcados, mesmo após feito o reload.
	
Você deverá recuperar a lista de imóveis da nossa própria API (informações no final deste documento).

Você deve fazer o desafio usando Rails. Para o frontend você pode usar React ou Rails.
Critérios
O que valorizamos:
* a qualidade interna: facilidade de entendimento do código
* qualidade externa: funcionamento e facilidade de uso
* algum diferencial baseado nos seus pontos fortes
    + Se você é bom de ux, considere uma boa interface que facilite a vida do perfil de usuário que você imaginou como público-alvo da web app. 
    + Se o seu forte é DevOps quem sabe alguma automação na criação do ambiente do desafio? 
    + Se o seu forte é qualidade interna, o que acha de alguma automação de testes?
    + Se você é bom de explorar integrações e outras funcionalidades, quem sabe adicionar a possibilidade de compartilhamento?

>O seu código deve ser disponibilizado no Github sem a inclusão do token da API.

* O README deve informar como devemos fazer para executar a aplicação e validar o que foi feito. 

## Clone e Instalação

Instalação: Realize o [clone do repositório](https://docs.github.com/pt/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository), após concluído acesse a pasta raiz do projeto e execute `bundle install --without prodution` para instalar as dependências.

## Desenvolvimento

Execute `rails s` para um servidor de desenvolvimento. A página será aberta automaticamente, caso contrário, navegue até `http://localhost:5000`. 

Para o funcionamento da página é necessário a criação do arquivo `key.json` dentro da pasta `assets/keys`.

Modelo do conteúdo do arquivo key.json:

`{ "key_orulo": "Bearer [Valor da Token]" }`

Nota: Não incluir os colchetes no conteúdo do arquivo.

O banco de dados de desenvolvimento é o SQLite3.

A cada alteração no código você precisará realizar o refresh da página manualmente no browser.

Além do perfil de usuário existe ainda o perfil de administrador, que deve ser alterado manualmente no banco de dados. Acesse a table users, escolha o usuário e mude o valor do campo admin para true. Após concluida esta estapa o administrador poderá acessar o ambiente Rails_admin e ter acesso total as tabelas do banco de dados.

## Produção

O banco de dados de produção é o PostgreSQL.

Foi utilizado o Heroku para hospedagem e teste do código, onde foi possivel testar o funcionamento.

## Live do Projeto

Acesse o projeto pelo [link](https://orulorailsapp.herokuapp.com/).

## Pendências

- Detalhar tutorial com construção da solução do zero.
- Detalhat tutorial para publicação no Heroku.



