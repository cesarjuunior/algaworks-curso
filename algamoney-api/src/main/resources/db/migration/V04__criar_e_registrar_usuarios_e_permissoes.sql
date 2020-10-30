CREATE TABLE USUARIO(
    codigo bigint PRIMARY KEY ,
    nome varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    senha varchar(150) NOT NULL
);

CREATE TABLE PERMISSAO (
    codigo bigint PRIMARY KEY,
    descricao varchar(50) NOT NULL
);

CREATE TABLE USUARIO_PERMISSAO (
    codigo_usuario bigint NOT NULL,
    codigo_permissao bigint NOT NULL,
    PRIMARY KEY (codigo_usuario, codigo_permissao),
    FOREIGN KEY (codigo_usuario) REFERENCES usuario(codigo),
    FOREIGN KEY (codigo_permissao) REFERENCES permissao(codigo)
);

INSERT INTO USUARIO (codigo, nome, email, senha) values (1, 'Administrador', 'admin@algamoney.com', '$2a$10$nZVQvpp7n5Qrfo2OgpqnXuv31Tu7CFSbhMSf7GQOXmKg4rTyn12Ja');
INSERT INTO USUARIO (codigo, nome, email, senha) values (2, 'Maria Silva', 'maria@algamoney.com', '$2a$10$dFg9isclUtP27Rp09uDT6OYHG6M6xu8CSEfD/M4kwtXbCBLxuRoeG');

INSERT INTO PERMISSAO (codigo, descricao) values (1, 'ROLE_CADASTRAR_CATEGORIA');
INSERT INTO PERMISSAO (codigo, descricao) values (2, 'ROLE_PESQUISAR_CATEGORIA');

INSERT INTO PERMISSAO (codigo, descricao) values (3, 'ROLE_CADASTRAR_PESSOA');
INSERT INTO PERMISSAO (codigo, descricao) values (4, 'ROLE_REMOVER_PESSOA ');
INSERT INTO PERMISSAO (codigo, descricao) values (5, 'ROLE_PESQUISAR_PESSOA');

INSERT INTO PERMISSAO (codigo, descricao) values (6, 'ROLE_CADASTRAR_LANCAMENTO');
INSERT INTO PERMISSAO (codigo, descricao) values (7, 'ROLE_REMOVER_LANCAMENTO');
INSERT INTO PERMISSAO (codigo, descricao) values (8, 'ROLE_PESQUISAR_LANCAMENTO');


--ADMIN
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (1,1);
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (1,2);
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (1,3);
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (1,4);
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (1,5);
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (1,6);
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (1,7);
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (1,8);

--MARIA
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (2,2);
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (2,5);
INSERT INTO USUARIO_PERMISSAO (codigo_usuario, codigo_permissao) values (2,8);




