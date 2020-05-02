CREATE TABLE Agendamento (
  Servico_Profissional_idProfissional INTEGER UNSIGNED NOT NULL,
  Servico_Cliente_idCliente INTEGER UNSIGNED NOT NULL,
  Usuario_idUsuario INTEGER UNSIGNED NOT NULL,
  Data_2 DATETIME NULL,
  Tipo VARCHAR(50) NULL,
  PRIMARY KEY(Servico_Profissional_idProfissional, Servico_Cliente_idCliente, Usuario_idUsuario),
  INDEX Servico_has_Usuario_FKIndex1(Servico_Cliente_idCliente, Servico_Profissional_idProfissional),
  INDEX Servico_has_Usuario_FKIndex2(Usuario_idUsuario)
);

CREATE TABLE Cliente (
  idCliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nomeCliente VARCHAR(50) NOT NULL,
  emailCliente VARCHAR(100) NULL,
  telefone BIGINT NULL,
  PRIMARY KEY(idCliente)
);

CREATE TABLE Frequenta (
  Cliente_idCliente INTEGER UNSIGNED NOT NULL,
  Salao_idSalao INTEGER UNSIGNED NOT NULL,
  Visitas BIGINT NULL,
  PRIMARY KEY(Cliente_idCliente, Salao_idSalao),
  INDEX Cliente_has_Salao_FKIndex1(Cliente_idCliente),
  INDEX Cliente_has_Salao_FKIndex2(Salao_idSalao)
);

CREATE TABLE Profissional (
  idProfissional INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cargo VARCHAR(50) NOT NULL,
  Nome VARCHAR(50) NOT NULL,
  email VARCHAR(100) NULL,
  telefone BIGINT NULL,
  PRIMARY KEY(idProfissional)
);

CREATE TABLE Salao (
  idSalao INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Endereco VARCHAR(100) NOT NULL,
  Lucros DOUBLE NOT NULL,
  Despesas DOUBLE NOT NULL,
  Nome VARCHAR(100) NOT NULL,
  PRIMARY KEY(idSalao)
);

CREATE TABLE Servico (
  Cliente_idCliente INTEGER UNSIGNED NOT NULL,
  Profissional_idProfissional INTEGER UNSIGNED NOT NULL,
  valor DOUBLE NOT NULL,
  PRIMARY KEY(Cliente_idCliente, Profissional_idProfissional),
  INDEX Cliente_has_Profissional_FKIndex1(Cliente_idCliente),
  INDEX Cliente_has_Profissional_FKIndex2(Profissional_idProfissional)
);

CREATE TABLE Trabalho (
  Profissional_idProfissional INTEGER UNSIGNED NOT NULL,
  Salao_idSalao INTEGER UNSIGNED NOT NULL,
  Salario DOUBLE NOT NULL,
  Carga_Horaria TIME NOT NULL,
  PRIMARY KEY(Profissional_idProfissional, Salao_idSalao),
  INDEX Profissional_has_Salao_FKIndex1(Profissional_idProfissional),
  INDEX Profissional_has_Salao_FKIndex2(Salao_idSalao)
);

CREATE TABLE Usuario (
  idUsuario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(50) NOT NULL,
  Login VARCHAR(50) NOT NULL,
  Senha VARCHAR(10) NOT NULL,
  PRIMARY KEY(idUsuario)
);

INSERT INTO Cliente(nomeCliente, emailCliente, telefone) VALUES ('André', 'andrezinmafiaazul@gmail.com', 34731683);