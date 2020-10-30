alter table PESSOA alter column nome set not null;
alter table PESSOA alter column ativo set not null;

CREATE TABLE LANCAMENTO(
    codigo SERIAL PRIMARY KEY,
    descricao CHARACTER VARYING(50) NOT NULL,
    data_vencimento DATE NOT NULL,
    data_pagamento DATE,
    valor DECIMAL(10,2) NOT NULL,
    observacao CHARACTER VARYING(100),
    tipo CHARACTER VARYING(20) NOT NULL,
    codigo_categoria BIGINT NOT NULL,
    codigo_pessoa BIGINT NOT NULL,
    FOREIGN KEY (codigo_categoria) REFERENCES CATEGORIA(codigo),
    FOREIGN KEY (codigo_pessoa) REFERENCES PESSOA(codigo)
);

INSERT INTO LANCAMENTO (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
VALUES ('Salário mensal', '2017-06-10', null, 6500.00, 'Distribuição de lucros', 'RECEITA', 1,1);

INSERT INTO LANCAMENTO (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
VALUES ('Café', '2017-06-10', '2017-06-10', 8.30, 'Outros', 'RECEITA', 2,2);

INSERT INTO LANCAMENTO (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
VALUES ('Pneus', '2017-06-10', null, 3000.00, 'Pirelli', 'RECEITA', 3,3);

