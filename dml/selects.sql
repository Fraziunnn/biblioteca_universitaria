UPDATE aluno
SET email = 'joao.atualizado@email.com'
WHERE nome = 'João Silva';

UPDATE multa
SET valor = 10.00
WHERE id_emprestimo = 4;

UPDATE livro
SET autor = 'João Pedro Souza'
WHERE titulo = 'Algoritmos e Estruturas de Dados';

DELETE FROM livro
WHERE id_livro NOT IN (SELECT id_livro FROM emprestimo);

DELETE FROM aluno
WHERE id_aluno NOT IN (SELECT id_aluno FROM emprestimo);

DELETE FROM multa
WHERE valor = 0.00;
