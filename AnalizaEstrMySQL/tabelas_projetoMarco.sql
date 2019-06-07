CREATE TABLE cliente (
	idCliente int AUTO_INCREMENT NOT NULL,
    nome varchar(50) NOT NULL,
    email varchar(30) NOT NULL,
    telefone varchar(20) NOT NULL,
    CFP varchar(20) NOT NULL, 
    RG varchar(20) NOT NULL,
    PRIMARY KEY (idCliente)	
);


produto (
	idProduto int AUTO_INCREMENT NOT NULL,
    nome varchar(50),
    descricao varchar(100),
    preco varchar(10),
    idFornecedor int NOT NULL,
    marca varchar(100),
    PRIMARY KEY 
    
    
    
);

CREATE TABLE compras (
	idCompra int AUTO_INCREMENT NOT NULL,
    valorComprado varchar(10) NOT NULL,
    idCliente int NOT NULL,
    idProduto int NOT NULL,
    dataCompra varchar(10),
    CONSTRAINT fk_idCliente FOREIGN KEY (idCliente) REFERENCES cliente (idCliente),
    CONSTRAINT fk_idProduto FOREIGN KEY (idProduto) REFERENCES produto (idProduto),
    PRIMARY KEY (idCompra)
);



CREATE TABLE forncedores (
	idFornecedor int AUTO_INCREMENT NOT NULL,
    nome varchar(50) NOT NULL,
    CNPJ varchar(20) NOT NULL,
	endereço varchar(80) NOT NULL,
    telefone varchar(20) NOT NULL,
    descricao varchar(100) NOT NULL, 
    PRIMARY KEY (idFornecedor)
);


CREATE TABLE entrega (
	idEntrega int AUTO_INCREMENT NOT NULL,
    dataEntrega varchar(10) NOT NULL,
    statusEntrega varchar(50) NOT NULL,
    idCompra int NOT NULL,
    CONSTRAINT fk_idCompra FOREIGN KEY (idCompra) REFERENCES compras (idCompra),
    PRIMARY KEY (idEntrega)    
);

CREATE TABLE paciente (
	idPaciente int AUTO_INCREMENT NOT NULL,
    nome varchar(50) NOT NULL,
    telefone varchar(20) NOT NULL,
    RG varchar(20) NOT NULL,
    CPF varchar(20) NOT NULL, 
    endereço varchar(80) NOT NULL,
    PRIMARY KEY (IdPaciente)
);


CREATE TABLE especialidade (
	idEspecialidade int AUTO_INCREMENT NOT NULL,
    nome varchar(50) NOT NULL,
    PRIMARY KEY (idEspecialidade)
);

CREATE TABLE medicos (
	idMedico int AUTO_INCREMENT NOT NULL,
    idEspecialidade int NOT NULL,
    nome varchar(50) NOT NULL,
    CRM varchar(10) NOT NULL,
    salario varchar(10) NOT NULL,
    CONSTRAINT fk_idEspecialidade FOREIGN KEY (idEspecialidade) REFERENCES especialidade (idEspecialidade),
    PRIMARY KEY (idMedico)
);

CREATE TABLE consulta(
	idConsulta int AUTO_INCREMENT NOT NULL,
    idPaciente int NOT NULL,
    idMedico int NOT NULL,
    doenca varchar(100) NOT NULL,
    dataConsulta varchar(10) NOT NULL,
    CONSTRAINT fk_idPaciente FOREIGN KEY (idPaciente) REFERENCES paciente(idPaciente),
    CONSTRAINT fk_idMedico FOREIGN KEY (idMedico) REFERENCES medicos(idMedico),
    PRIMARY KEY (idConsulta)
);


CREATE TABLE planosaude(
	idPlano int AUTO_INCREMENT NOT NULL,
    idPaciente int NOT NULL,
    valor varchar(10) NOT NULL,
    descricao varchar(100) NOT NULL,
    nome varchar(50) NOT NULL,
    CONSTRAINT fk_idPaciente FOREIGN KEY (idPaciente) REFERENCES paciente(idPaciente),
    PRIMARY KEY (idPlano)
);

