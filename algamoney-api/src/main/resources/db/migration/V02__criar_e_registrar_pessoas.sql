alter table CATEGORIA alter column nome set not null;


CREATE TABLE PESSOA(
    codigo SERIAL PRIMARY KEY,
    nome CHARACTER VARYING(100),
    ativo BOOLEAN,
    logradouro CHARACTER VARYING(100),
    numero CHARACTER VARYING(100),
    complemento CHARACTER VARYING(100),
    bairro CHARACTER VARYING(100),
    cep CHARACTER VARYING(100),
    cidade CHARACTER VARYING(100),
    estado CHARACTER VARYING(100)
);

INSERT INTO PESSOA (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)
VALUES('César', true, 'Quadra 09', '3', 'Casa', 'São José', '71693-010', 'São Sebastião', 'DF');

INSERT INTO PESSOA (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)
VALUES('Éllen', true, 'Quadra 10', '2', 'Casa', 'São Francisco', '71693-010', 'Taguatinga', 'DF');

INSERT INTO PESSOA (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)
VALUES('Manoel', true, 'Quadra 12', '7', 'Casa', 'Morro da Cruz', '71693-010', 'São Sebastião', 'DF');

