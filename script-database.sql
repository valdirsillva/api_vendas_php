
CREATE DATABASE databasecadastrovendas;

CREATE TABLE vendedores (
  id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  email VARCHAR(60) NOT NULL
);



CREATE TABLE vendas(
  id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  comissao DECIMAL(7, 2) NULL,
  valor_venda DECIMAL(7, 2) NULL,
  data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
  vendedor_id INTEGER,
  FOREIGN KEY (vendedor_id) REFERENCES vendedores (id)


)