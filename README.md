# Hello World node.js

### Objetivo:

Esse projeto serve para fins de testes

### Como rodar:
* Tenha certeza que você está rodando node v6.9.1 e npm 3.10.8
* Na raiz do repositório, excute: npm install para instalação de dependências
* Ainda na raiz do projeto, execute: node index.js

### Como rodar usando Docker:
* Tenha certeza que você está com docker instalado (recomendado v1.12)
* Na raiz do projeto, execute: docker build -t <nome-desejado:tag-desejada> .
* Exemplo docker build -t meu-app:1.0 .
* Não esqueça o ponto no final do comando
* Por fim, vamos executar o container: docker run -d -p 3000:3000 meu-app:1.0
* Acesse seu browser de preferência: 127.0.0.1:3000
