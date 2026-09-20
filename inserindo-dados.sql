use Petshop;

INSERT INTO funcionario(id_funcionario, nome, cpf, email, telefone) values
(1, 'Fernanda Alves',  '66677788899', 'fernanda@petshop.com', '61991110001'),
(2, 'Gabriel Costa',   '77788899900', 'gabriel@petshop.com',  '61991110002'),
(3, 'Helena Rocha',    '88899900011', 'helena@petshop.com',   '61991110003'),
(4, 'Igor Nunes',      '99900011122', 'igor@petshop.com',     '61991110004'),
(5, 'Juliana Martins', '10011122233', 'juliana@petshop.com',  '61991110005'),
(6, 'Kleber Santos', '21122233344', 'kleber@petshop.com', '61991110006'),
(7, 'Larissa Oliveira', '32233344455', 'larissa@petshop.com', '61991110007'),
(8, 'Marcos Silva', '43344455566', 'marcos@petshop.com', '61991110008'),
(9, 'Natalia Pereira', '54455566677', 'natalia@petshop.com', '61991110009'),
(10, 'Otavio Mendes', '65566677788', 'otavio@petshop.com', '61991110010'),
(11, 'Patricia Lima', '76677788899', 'patricia@petshop.com', '61991110011'),
(12, 'Quintino Gomes', '87788899900', 'quintino@petshop.com', '61991110012'),
(13, 'Rafael Souza', '98899900011', 'rafael@petshop.com', '61991110013'),
(14, 'Sabrina Fernandes', '09900011122', 'sabrina@petshop.com', '61991110014'),
(15, 'Thiago Ribeiro', '10871122233', 'thiago@petshop.com', '61991110015');

select * FROM funcionario;


INSERT INTO veterinario (id_funcionario, id_veterinario, crmv, formacao) VALUES
(1, 1, 'CRMV-DF-12345', 'Medicina Veterinária - UnB'),
(2, 2, 'CRMV-DF-23456', 'Medicina Veterinária - UCB'),
(3, 3, 'CRMV-DF-34567', 'Medicina Veterinária - IESB'),
(4, 4, 'CRMV-DF-45678', 'Medicina Veterinária - UNIPLAN'),
(5, 5, 'CRMV-DF-56789', 'Medicina Veterinária - UniCEUB');

SELECT V.id_funcionario, F.nome, V.formacao
FROM veterinario V
INNER JOIN funcionario F ON F.id_funcionario = V.id_funcionario; 


INSERT INTO tosador (id_funcionario, id_tosador, certificacao) VALUES
(6, 1, 'Curso Profissionalizante de Tosa - SENAC'),
(7, 2, 'Certificação Internacional de Grooming'),
(8, 3, 'Curso de Tosa e Estética Animal - SEBRAE'),
(9, 4, 'Certificação em Tosa Higiênica - PetStyle'),
(10, 5, 'Curso Avançado de Tosa Artística');

SELECT T.id_funcionario, F.nome, T.certificacao
FROM tosador T
INNER JOIN funcionario F ON F.id_funcionario = T.id_funcionario; 


INSERT INTO atendente (id_funcionario, id_atendente, turno) VALUES
(11, 1, 'M'),
(12, 2, 'T'),
(13, 3, 'N'),
(14, 4, 'M'),
(15, 5, 'T');

SELECT A.id_funcionario, F.nome, A.turno
FROM atendente A
INNER JOIN funcionario F ON F.id_funcionario = A.id_funcionario; 


INSERT INTO tutor (id_tutor, nome, cpf, email) VALUES
(1, 'Ana Lima',       '65748392019', 'ana.lima@email.com'),
(2, 'Bruno Souza',    '19283746538', 'bruno.souza@email.com'),
(3, 'Carla Mendes',   '90873216574', 'carla.mendes@email.com'),
(4, 'Diego Ferreira', '82310746287', 'diego.ferreira@email.com'),
(5, 'Eduarda Castro', '29088873456', 'eduarda.castro@email.com');

SELECT * FROM tutor;


INSERT INTO pet (id_pet, id_tutor, nome, especie, porte, raca, sexo) VALUES
(1, 1, 'Bolinha', 'Cão', 'Pequeno', 'Poodle', 'M'),
(2, 2, 'Mimi', 'Gato', 'Pequeno', 'Siamês', 'F'),
(3, 3, 'Rex', 'Cão', 'Grande',  'Pastor Alemão', 'M'),
(4, 4, 'Pipoca', 'Cão', 'Médio',   'Beagle', 'F'),
(5, 5, 'Pingo', 'Gato', 'Pequeno', 'Persa', 'M');

SELECT P.id_pet, T.nome AS Nome_tutor, P.nome, P.especie, P.sexo
FROM pet P 
INNER JOIN tutor T ON T.id_tutor = P.id_tutor;


INSERT INTO medicamento (id_medicamento, nome, principio_ativo) VALUES
(1, 'Drontal',      'Pamoato de pirantel + Praziquantel'),
(2, 'Frontline',    'Fipronil'),
(3, 'Amoxicilina',  'Amoxicilina triidratada'),
(4, 'Dipirona Vet', 'Dipirona sódica'),
(5, 'Meloxicam',    'Meloxicam');

SELECT * FROM medicamento;


INSERT INTO servico (id_servico, valor, nome) VALUES
(1, 80.00,  'Consulta Veterinária'),
(2, 60.00,  'Tosa Higiênica'),
(3, 120.00, 'Tosa Completa'),
(4, 150.00, 'Banho e Tosa'),
(5, 200.00, 'Cirurgia de Pequeno Porte');

INSERT INTO servico(id_servico,valor,nome) VALUES
(6,90.00, 'Vacinação');

SELECT * FROM servico;

INSERT INTO pacote (id_pacote, valor, nome) VALUES
(1, 350.00, 'Pacote Básico — 3 Banhos'),
(2, 500.00, 'Pacote Premium — Banho + Tosa + Consulta'),
(3, 250.00, 'Pacote Filhote — Vacinas + Consulta'),
(4, 450.00, 'Pacote Senior — Check-up Completo'),
(5, 600.00, 'Pacote VIP — Serviços Ilimitados/Mês');

SELECT * FROM pacote;


INSERT INTO vacinacao (id_vacinacao, id_pet, id_veterinario, nome_vacina, data_vacinacao, dose) VALUES
(1, 1, 1, 'V8',         '2024-01-10 09:00:00', '1ª dose'),
(2, 2, 2, 'Antirrábica','2024-02-15 10:30:00', 'Anual'),
(3, 3, 3, 'V10',        '2024-03-20 11:00:00', '2ª dose'),
(4, 4, 4, 'Giárdia',    '2024-04-05 14:00:00', '1ª dose'),
(5, 5, 5, 'Leucemia',   '2024-05-12 16:00:00', 'Reforço');

SELECT 
    V.id_vacinacao, 
    P.nome AS nome_pet, 
    F.nome AS nome_veterinario, 
    V.nome_vacina, 
    V.dose
FROM vacinacao V
INNER JOIN pet P ON P.id_pet = V.id_pet
INNER JOIN veterinario Vt ON Vt.id_veterinario = V.id_veterinario
INNER JOIN funcionario F ON F.id_funcionario = Vt.id_funcionario;



INSERT INTO prontuario (id_prontuario, id_pet, historico) VALUES
(1, 1, 'Vacinação V8 em dia. Sem alergias conhecidas.'),
(2, 2, 'Gato castrado. Antirrábica aplicada.'),
(3, 3, 'Histórico de displasia leve. V10 atualizada.'),
(4, 4, 'Sem histórico relevante. Vacinação em dia.'),
(5, 5, 'Felino com predisposição a bola de pelo. Leucemia vacinada.');

SELECT P.id_prontuario, pet.nome, P.historico
FROM prontuario P 
INNER JOIN pet ON pet.id_pet = P.id_pet;


INSERT INTO prescricao (id_prescricao, id_pet, id_veterinario, id_medicamento) VALUES
(1, 1, 4, 2),
(2, 2, 5, 1),
(3, 3, 2, 4),
(4, 4, 3, 5),
(5, 5, 1, 3);

SELECT P.id_prescricao, PT.nome, M.nome
FROM prescricao P 
INNER JOIN pet PT ON PT.id_pet = P.id_pet
INNER JOIN medicamento M ON M.id_medicamento = P.id_medicamento;


INSERT INTO atendimento (id_atendimento, id_pet, id_servico, id_funcionario, data_atendimento) VALUES
(1, 4, 1, 13,'2024-01-10 19:00:00'),
(2, 2, 2, 14,'2024-02-15 10:30:00'),
(3, 1, 3, 11,'2024-03-20 11:00:00'),
(4, 5, 4, 15,'2024-04-05 14:00:00'),
(5, 3, 5, 12,'2024-05-12 16:00:00');

Select A.id_atendimento, P.nome, S.nome, F.nome, A.data_atendimento
FROM atendimento A 
INNER JOIN pet P ON P.id_pet = A.id_pet
INNER JOIN servico S ON S.id_servico = A.id_servico
INNER JOIN funcionario F ON F.id_funcionario = A.id_funcionario;


INSERT INTO assinatura(id_assinatura,id_pacote,id_pet,data_inicio,data_fim,ativo) VALUES
(1,4,3,'2026-02-19',null,'S'),
(2,1,5,'2026-05-07',null,'S'),
(3,2,1,'2026-06-28','2026-09-22','N'),
(4,5,2,'2025-12-10',null,'S'),
(5,3,4,'2026-06-11','2026-08-01','N'); 

SELECT A.id_assinatura, PCT.nome, P.nome, A.data_inicio,A.data_fim,A.ativo
FROM assinatura A
INNER JOIN pet P ON P.id_pet = A.id_pet
INNER JOIN pacote PCT ON PCT.id_pacote = A.id_pacote;
