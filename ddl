CREATE TABLE curso (
    id_curso SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

CREATE TABLE categoria_livro (
    id_categoria SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE livro (
    id_livro SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100),
    ano_publicacao INT CHECK (ano_publicacao >= 1900),
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria_livro(id_categoria)
);

CREATE TABLE emprestimo (
    id_emprestimo SERIAL PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE NOT NULL DEFAULT CURRENT_DATE,
    data_prevista_devolucao DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

CREATE TABLE devolucao (
    id_devolucao SERIAL PRIMARY KEY,
    id_emprestimo INT NOT NULL UNIQUE,
    data_devolucao DATE NOT NULL,
    FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id_emprestimo)
);

CREATE TABLE multa (
    id_multa SERIAL PRIMARY KEY,
    id_devolucao INT NOT NULL UNIQUE,
    valor DECIMAL(6,2) NOT NULL CHECK (valor >= 0),
    paga BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (id_devolucao) REFERENCES devolucao(id_devolucao)
);

ALTER TABLE aluno ADD telefone VARCHAR(15);



