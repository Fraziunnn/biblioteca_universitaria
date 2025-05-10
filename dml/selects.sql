SELECT * FROM aluno
WHERE id_curso = 1;

SELECT * FROM aluno
WHERE nome LIKE 'João%';

SELECT * FROM aluno
WHERE nome LIKE 'João%';

SELECT * FROM livro
WHERE id_categoria = 1 AND autor = 'Carlos Almeida';

SELECT aluno.nome AS nome_aluno, curso.nome AS nome_curso
FROM aluno
JOIN curso ON aluno.id_curso = curso.id_curso;

SELECT livro.titulo, categoria_livro.nome AS categoria
FROM livro
JOIN categoria_livro ON livro.id_categoria = categoria_livro.id_categoria;

SELECT emprestimo.id_emprestimo, aluno.nome AS aluno, livro.titulo AS livro, emprestimo.data_emprestimo
FROM emprestimo
JOIN aluno ON emprestimo.id_aluno = aluno.id_aluno
JOIN livro ON emprestimo.id_livro = livro.id_livro;

SELECT categoria_livro.nome AS categoria, COUNT(livro.id_livro) AS total_livros
FROM categoria_livro
LEFT JOIN livro ON categoria_livro.id_categoria = livro.id_categoria
GROUP BY categoria_livro.id_categoria;

SELECT AVG(valor) AS media_multa
FROM multa;


SELECT livro.titulo, MAX(emprestimo.data_emprestimo) AS data_emprestimo
FROM emprestimo
JOIN livro ON emprestimo.id_livro = livro.id_livro
GROUP BY livro.id_livro
ORDER BY data_emprestimo DESC
LIMIT 1;

SELECT aluno.nome AS aluno, COUNT(emprestimo.id_emprestimo) AS total_emprestimos
FROM emprestimo
JOIN aluno ON emprestimo.id_aluno = aluno.id_aluno
GROUP BY aluno.id_aluno
HAVING COUNT(emprestimo.id_emprestimo) > 1;

SELECT * FROM livro
ORDER BY titulo ASC;

SELECT * FROM aluno
ORDER BY nome DESC;

SELECT livro.titulo, emprestimo.data_prevista_devolucao
FROM emprestimo
JOIN livro ON emprestimo.id_livro = livro.id_livro
WHERE emprestimo.data_prevista_devolucao < CURRENT_DATE;


