# Projeto de API de usuários com Node.js e PostgreSQL 🚀	

### Descrição 📝
Esse projeto tem como objetivo criar uma API de usuários, que permite o cadastro, consulta, atualização e exclusão de usuários. A API será desenvolvida utilizando o Node.js e o PostgreSQL.

### Tecnologias 👨‍💻

- Node.js
- PostgreSQL
- Express.js
- Cors

### Instalação e execução 💻

1. Clone o repositório do projeto.

2. Entre na pasta do projeto e instale as dependências do projeto.

```bash
npm install
```

3. Crie um arquivo .env na raiz do projeto e adicione as seguintes variáveis de ambiente:

```bash
PORT=3000
DB_HOST=localhost
DB_USER=postgres
DB_PASSWORD=postgres
DB_NAME=users
```

4. Execute o comando abaixo rodar o servidor de desenvolvimento.

```bash
npm run dev
```

5. Acesse a API em http://localhost:3000/users.

### API

#### POST /users

Cria um novo usuário.

##### Request

```json
{
  "name": "Nome do usuário",
  "email": "email@exemplo.com",
  "password": "senha"
}
```

##### Response

```json
{
  "id": 1,
  "name": "Nome do usuário",
  "email": "email@exemplo.com",
  "password": "senha"
}
```

#### GET /users

Retorna uma lista de todos os usuários.

##### Response

```json
[
  {
    "id": 1,
    "name": "Nome do usuário",
    "email": "email@exemplo.com",
    "password": "senha"
  },
  {
    "id": 2,
    "name": "Nome do usuário",
    "email": "email@exemplo.com",
    "password": "senha"
  }
]
```

#### GET /users/:id

Retorna os detalhes de um usuário específico.

##### Response

```json
{
  "id": 1,
  "name": "Nome do usuário",
  "email": "email@exemplo.com",
  "password": "senha"
}