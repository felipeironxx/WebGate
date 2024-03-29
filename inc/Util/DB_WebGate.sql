CREATE TABLE Cliente (
  ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(45) NULL,
  Estado CHAR NULL,
  Cidade VARCHAR(45) NULL,
  Bairro VARCHAR(45) NULL,
  Rua VARCHAR(45) NULL,
  N�_rua INTEGER UNSIGNED NULL,
  CEP INTEGER UNSIGNED NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE FaleConosco (
  ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Menssagem VARCHAR(255) NULL,
  NomeCliente VARCHAR(45) NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Or�amento (
  N�_Or�amento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cliente_ID INTEGER UNSIGNED NOT NULL,
  Produto_Codigo INTEGER UNSIGNED NOT NULL,
  ValorTotal FLOAT NULL,
  PRIMARY KEY(N�_Or�amento),
  INDEX Or�amento_FKIndex1(Produto_Codigo),
  INDEX Or�amento_FKIndex2(Cliente_ID)
);

CREATE TABLE PessoaFisica (
  CPF INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cliente_ID INTEGER UNSIGNED NOT NULL,
  RG INTEGER UNSIGNED NULL,
  PRIMARY KEY(CPF),
  INDEX PessoaFisica_FKIndex1(Cliente_ID)
);

CREATE TABLE PessoaJuridica (
  CNPJ INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cliente_ID INTEGER UNSIGNED NOT NULL,
  IE INTEGER UNSIGNED NULL,
  PRIMARY KEY(CNPJ),
  INDEX PessoaJuridica_FKIndex1(Cliente_ID)
);

CREATE TABLE Produto (
  Codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cliente_ID INTEGER UNSIGNED NOT NULL,
  Nome VARCHAR(45) NULL,
  Caracteristicas VARCHAR(255) NULL,
  Valor FLOAT NULL,
  PRIMARY KEY(Codigo),
  INDEX Produto_FKIndex1(Cliente_ID)
);


