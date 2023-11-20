**Readme.md**

# E-Shop de Carros

Este projeto é um e-shop de carros desenvolvido em Flutter para o front end e Spring para o back end, com persistência de dados no PostgreSQL. O objetivo é criar uma aplicação que permita a visualização, cadastro, edição e remoção de veículos usados, seguindo os requisitos estabelecidos.

## Configuração do Ambiente

### Front End (Flutter)

1. Instale o Flutter seguindo as [instruções oficiais](https://flutter.dev/docs/get-started/install).
2. Clone este repositório.
3. Navegue até o diretório do front end: `cd frontend`.
4. Execute `flutter pub get` para instalar as dependências.
5. Execute `flutter run` para iniciar a aplicação.

### Back End (Spring)

1. Instale o Spring Boot na sua IDE preferida.
2. Clone este repositório.
3. Navegue até o diretório do back end: `cd backend`.
4. Configure o PostgreSQL e ajuste as configurações de banco de dados em `application.properties`.
5. Execute o projeto como uma aplicação Spring Boot.

## Diário de Desenvolvimento

### Dia 1 - Configuração Inicial

- [ ] Inicializar projeto Flutter.
- [ ] Configurar projeto Spring Boot.
- [ ] Configurar conexão com o banco de dados.
- [ ] Configurar classes de modelo para representar os veículos no back end.
- [ ] Configurar o Spring Data JPA para facilitar o acesso aos dados relacionais.

### Dia 2 - Autenticação

- [ ] Implementar autenticação JWT no back end.
- [ ] Criar tela de login no front end.
- [ ] Estabelecer conexão entre front end e back end para autenticação.

### Dia 3 - Listagem de Veículos

- [ ] Exibir vitrine de veículos na home page do front end.
- [ ] Configurar ordenação de veículos por valor.
- [ ] Criar endpoint no back end para fornecer a lista de veículos.

### Dia 4 - Cadastro de Veículos

- [ ] Implementar tela de cadastro de veículos.
- [ ] Criar endpoint no back end para cadastro de veículos.
- [ ] Validar token JWT nas requisições de cadastro.

### Dia 5 - Edição de Veículos

- [ ] Implementar tela de edição de veículos.
- [ ] Criar endpoint no back end para edição de veículos.
- [ ] Validar token JWT nas requisições de edição.

### Dia 6 - Deleção de Veículos

- [ ] Implementar funcionalidade de deleção de veículos.
- [ ] Criar endpoint no back end para deleção de veículos.
- [ ] Validar token JWT nas requisições de deleção.

### Dia 7 - Aprimoramentos e Testes

- [ ] Adicionar upload de imagens para veículos no front end.
- [ ] Implementar upload de imagens no back end.
- [ ] Realizar testes unitários e de integração.
- [ ] Finalizar e revisar o código.
- [ ] Preparar para entrega.

## Libs Recomendadas

- **Flutter:**
  - [http](https://pub.dev/packages/http) - Para realizar chamadas HTTP no Flutter.
  - [provider](https://pub.dev/packages/provider) - Gerenciamento de estado.
  - [dio](https://pub.dev/packages/dio) - Biblioteca HTTP mais avançada para Flutter.

- **Spring Boot:**
  - [Lombok](https://projectlombok.org/) - Reduz a verbosidade do código Java.
  - [Spring Boot Starter Test](https://docs.spring.io/spring-boot/docs/current/reference/html/spring-boot-features.html#boot-features-testing) - Suporte para testes no Spring Boot.
  - [Spring Security](https://spring.io/projects/spring-security) - Para autenticação e autorização.
  - [Spring Data JPA](https://spring.io/projects/spring-data-jpa) - Facilita o acesso a dados relacionais com o Spring.
  - [PostgreSQL Driver](https://jdbc.postgresql.org/) - Driver JDBC para PostgreSQL.
  - [Spring Boot DevTools](https://docs.spring.io/spring-boot/docs/current/reference/html/using.html#using.devtools) - Ferramentas para agilizar o desenvolvimento.
