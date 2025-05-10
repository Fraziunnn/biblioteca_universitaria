CREATE TABLE curso (
    id_curso SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    id_curso INT REFERENCES curso(id_curso) ON DELETE CASCADE
);

CREATE TABLE categoria_livro (
    id_categoria SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE livro (
    id_livro SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    autor VARCHAR(100),
    id_categoria INT REFERENCES categoria_livro(id_categoria) ON DELETE CASCADE
);

CREATE TABLE emprestimo (
    id_emprestimo SERIAL PRIMARY KEY,
    id_aluno INT REFERENCES aluno(id_aluno) ON DELETE CASCADE,
    id_livro INT REFERENCES livro(id_livro) ON DELETE CASCADE,
    data_emprestimo DATE NOT NULL,
    data_prevista_devolucao DATE NOT NULL
);

CREATE TABLE devolucao (
    id_devolucao SERIAL PRIMARY KEY,
    id_emprestimo INT REFERENCES emprestimo(id_emprestimo) ON DELETE CASCADE,
    data_devolucao DATE
);

CREATE TABLE multa (
    id_multa SERIAL PRIMARY KEY,
    id_emprestimo INT REFERENCES emprestimo(id_emprestimo) ON DELETE CASCADE,
    valor NUMERIC(5,2) CHECK (valor >= 0),
    data_pagamento DATE
);

ALTER TABLE aluno ADD COLUMN telefone VARCHAR(15);

ALTER TABLE aluno ADD COLUMN status VARCHAR(10) DEFAULT 'ativo' CHECK (status IN ('ativo', 'inativo'));

