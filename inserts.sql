INSERT INTO curso (nome, descricao) VALUES
('Ciência da Computação', 'Curso de graduação em Ciência da Computação'),
('Engenharia de Software', 'Curso de Engenharia focado em desenvolvimento de software'),
('Sistemas de Informação', 'Curso que une tecnologia e gestão'),
('Engenharia da Computação', 'Abrange hardware e software'),
('Matemática', 'Licenciatura em matemática'),
('Física', 'Curso de graduação em Física'),
('Engenharia Civil', 'Curso de engenharia com foco em construção'),
('Administração', 'Curso voltado para gestão de negócios'),
('Arquitetura', 'Curso de design e planejamento de espaços'),
('Design Gráfico', 'Voltado para comunicação visual');


INSERT INTO aluno (nome, email, id_curso, telefone) VALUES
('João Silva', 'joao.silva@email.com', 1, '11999990001'),
('Maria Oliveira', 'maria.oliveira@email.com', 2, '11999990002'),
('Carlos Mendes', 'carlos.mendes@email.com', 3, '11999990003'),
('Ana Paula', 'ana.paula@email.com', 4, '11999990004'),
('Fernanda Lima', 'fernanda.lima@email.com', 5, '11999990005'),
('Rafael Torres', 'rafael.torres@email.com', 6, '11999990006'),
('Lucas Rocha', 'lucas.rocha@email.com', 1, '11999990007'),
('Beatriz Almeida', 'beatriz.almeida@email.com', 2, '11999990008'),
('Pedro Henrique', 'pedro.henrique@email.com', 3, '11999990009'),
('Juliana Castro', 'juliana.castro@email.com', 4, '11999990010');


INSERT INTO categoria_livro (nome) VALUES
('Computação'),
('Engenharia'),
('Literatura'),
('Matemática'),
('Ciência'),
('Física'),
('Administração'),
('Arquitetura'),
('Design'),
('Filosofia');


INSERT INTO livro (titulo, autor, id_categoria) VALUES
('Introdução à Programação', 'Carlos Almeida', 1),
('Algoritmos e Estruturas de Dados', 'João Souza', 1),
('Engenharia de Software Moderna', 'Ana Clara', 2),
('Literatura Brasileira', 'Machado de Assis', 3),
('Cálculo Diferencial', 'James Stewart', 4),
('Física Conceitual', 'Paul Hewitt', 5),
('Administração Estratégica', 'Michael Porter', 7),
('História da Arquitetura', 'Vitruvius', 8),
('Teoria do Design', 'Don Norman', 9),
('Introdução à Filosofia', 'Marilena Chauí', 10);

INSERT INTO emprestimo (id_aluno, id_livro, data_emprestimo, data_prevista_devolucao) VALUES
(1, 1, '2025-05-01', '2025-05-15'),
(2, 2, '2025-05-02', '2025-05-16'),
(3, 3, '2025-05-03', '2025-05-17'),
(4, 4, '2025-05-04', '2025-05-18'),
(5, 5, '2025-05-05', '2025-05-19'),
(6, 6, '2025-05-06', '2025-05-20'),
(7, 7, '2025-05-07', '2025-05-21'),
(8, 8, '2025-05-08', '2025-05-22'),
(9, 9, '2025-05-09', '2025-05-23'),
(10, 10, '2025-05-10', '2025-05-24');

INSERT INTO devolucao (id_emprestimo, data_devolucao) VALUES
(1, '2025-05-14'),
(2, '2025-05-16'),
(3, '2025-05-20'),
(4, '2025-05-21'),
(5, '2025-05-23'),
(6, '2025-05-24'),
(7, '2025-05-25'),
(8, '2025-05-26'),
(9, '2025-05-27'),
(10, '2025-05-28');

INSERT INTO multa (id_emprestimo, valor, data_pagamento) VALUES
(3, 5.00, '2025-05-22'),
(4, 3.50, '2025-05-23'),
(5, 2.00, '2025-05-24'),
(6, 6.00, '2025-05-26'),
(7, 4.00, '2025-05-28'),
(8, 7.50, '2025-05-29'),
(9, 3.00, '2025-05-30'),
(10, 8.00, '2025-06-01'),
(1, 0.00, NULL),
(2, 0.00, NULL);

