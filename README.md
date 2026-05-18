# 🛒 Projeto E-commerce SQL

Este projeto é um modelo prático de como funciona o banco de dados por trás de uma loja virtual (um e-commerce). Ele cria tabelas para salvar clientes, produtos e pedidos, coloca alguns dados de teste e depois faz consultas inteligentes para gerar relatórios de vendas.

O projeto foi dividido em **3 partes organizadas** que devem ser executadas na ordem correta.

---

## 🔝 Ordem de Execução (Muito Importante!)

Para testar o projeto, você deve rodar os arquivos nesta ordem:

1. **`schema.sql` (Primeiro):** Cria as tabelas vazias. (Não dá para colocar dados em algo que não existe).
2. **`seed.sql` (Segundo):** Coloca os dados de teste (clientes, produtos e compras simuladas) dentro das tabelas.
3. **`queries.sql` (Terceiro):** Faz as perguntas para o banco de dados e gera os relatórios.

---

## 🧩 O que cada arquivo faz?

### 1. `schema.sql` (A Estrutura)
Cria o esqueleto do banco de dados com 3 tabelas:
* **Clientes:** Guarda o nome, e-mail (que não pode ser repetido) e a data de cadastro.
* **Produtos:** Guarda o nome do item, o preço (com centavos) e a quantidade em estoque.
* **Pedidos:** Conecta o Cliente ao Produto que ele comprou e guarda a quantidade e a data da compra.

### 2. `seed.sql` (Os Dados de Teste)
Insere informações fictícias para o banco ter o que processar:
* Cadastra 3 clientes (Ana, Carlos e Mariana).
* Cadastra 4 produtos (Teclado Mecânico, Mouse Gamer, Monitor 24" e um Fone Bluetooth com estoque zerado para testes).
* Simula algumas compras entre eles.

### 3. `queries.sql` (Os Relatórios / Inteligência)
Contém 4 comandos de busca que mostram informações vitais para o dono de uma loja:
* 🧾 **Lista Geral de Pedidos:** Junta o nome do cliente com o nome do produto e calcula o valor total de cada compra.
* 🏆 **Ranking de Clientes:** Mostra quem são as pessoas que mais gastaram dinheiro na loja, ordenando do maior para o menor.
* ⚠️ **Aviso de Estoque Baixo:** Filtra e mostra todos os produtos que têm menos de 10 unidades no estoque, ajudando na hora de reabastecer.
* 🎯 **Clientes Sumidos:** Descobre quem se cadastrou na loja, mas ainda nunca fez nenhuma compra (excelente para enviar cupons de desconto).

---

## 🛠️ Tecnologias Usadas

* **SQL** (Linguagem padrão para bancos de dados relacionais).
* Pode ser executado em gerenciadores como **SQLite**, MySQL ou PostgreSQL.
