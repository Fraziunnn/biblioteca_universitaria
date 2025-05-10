INSERT INTO curso (nome, descricao) VALUES
('Ciência da Computação', 'Curso de graduação em Ciência da Computação'),
('Engenharia de Software', 'Curso de Engenharia focado em desenvolvimento de software');

INSERT INTO aluno (nome, email, id_curso) VALUES
('João Silva', 'joao.silva@email.com', 1),
('Maria Oliveira', 'maria.oliveira@email.com', 2);

INSERT INTO categoria_livro (nome) VALUES
('Computação'),
('Engenharia'),
('Literatura');

INSERT INTO livro (titulo, autor, id_categoria) VALUES
('Introdução à Programação', 'Carlos Almeida', 1),
('Algoritmos e Estruturas de Dados', 'João Souza', 1);


UPDATE aluno
SET email = 'joao.novo@email.com'
WHERE id_aluno = 1;


DELETE FROM livro
WHERE id_livro = 1;


SELECT * FROM aluno;

SELECT * FROM livro l
JOIN emprestimo e ON l.id_livro = e.id_livro;

