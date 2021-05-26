# README

Sistema de livros desenvolvido como teste para a empresa Zygo

Foi configurado um ambiente com docker com as seguintes configurações:

  - Ruby '2.7.3'
  - Rails '6.1.3'

Para a implementação da criação de usuário, autenticação e criptografia das senhas foi utilizado a gem Devise.

Como framework no front foi utilizado bootstrap Na versão '5.0.1'

E para as views e forms foi utilizado a gem rails_admin.

Para a estilização do form foi utilizado a gem rails_admin_rollincode '1.0'

Essa gem utiliza scss para a estilização das classes com variáveis globais.

Para o armazenamento das imagens dos livros foi utilizado o active_storage

# Configuração de ambiente

Antes é necessário que o docker esteja instalado em seu ambiente de desenvolvimento, para mais informações acesse o link

[GET_DOCKER](https://docs.docker.com/get-docker/)

Para iniciar o ambiente, basta clonar o projeto, acessa-lo via terminal e executar o comando

```
docker-compose up
```

Após startar o projeto, rodar os comandos

```
  docker-compose run web rails db:create
  docker-compose run web rails db:migrate
```

Na sequencia, será necessário criar um usuário, clicando em Sign up

Para acessar a rota de usuário basta utilizar a URL
 - /books

Para acessar a rota de admistrador basta utilizar a URL
 - /admin/book
