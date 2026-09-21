use Petshop;

INSERT INTO funcionario(id_funcionario, nome, cpf, email, telefone) VALUES
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

SELECT id_funcionario, nome, cargo FROM (
    SELECT id_funcionario, nome, 'Veterinario' as cargo FROM funcionario WHERE id_funcionario <= 5
    UNION
    SELECT id_funcionario, nome, 'Tosador' FROM funcionario WHERE id_funcionario BETWEEN 6 AND 10
    UNION
    SELECT id_funcionario, nome, 'Atendente' FROM funcionario WHERE id_funcionario >= 11
) AS equipe;

INSERT INTO veterinario (id_funcionario, crmv, formacao) VALUES
(1, 'CRMV-DF-12345', 'Medicina Veterinária - UnB'),
(2, 'CRMV-DF-23456', 'Medicina Veterinária - UCB'),
(3, 'CRMV-DF-34567', 'Medicina Veterinária - IESB'),
(4, 'CRMV-DF-45678', 'Medicina Veterinária - UNIPLAN'),
(5, 'CRMV-DF-56789', 'Medicina Veterinária - UniCEUB');

INSERT INTO tosador (id_funcionario, certificacao) VALUES
(6, 'Curso Profissionalizante de Tosa - SENAC'),
(7, 'Certificação Internacional de Grooming'),
(8, 'Curso de Tosa e Estética Animal - SEBRAE'),
(9, 'Certificação em Tosa Higiênica - PetStyle'),
(10, 'Curso Avançado de Tosa Artística');

INSERT INTO atendente (id_funcionario, turno) VALUES
(11, 'Manhã'),
(12, 'Tarde'),
(13, 'Noite'),
(14, 'Manhã'),
(15, 'Tarde');


INSERT INTO tutor (id_tutor, nome, cpf, email, telefone_principal, telefone_secundario, rua, numero, bairro, cidade, cep) VALUES
(1, 'Ana Lima',       '65748392019', 'ana.lima@email.com', '61988880001', NULL, 'Rua das Flores', '12', 'Asa Sul', 'Brasília', '70000-000'),
(2, 'Bruno Souza',    '19283746538', 'bruno.souza@email.com', '61988880002', '6133330002', 'Av. Central', '45', 'Águas Claras', 'Brasília', '71900-000'),
(3, 'Carla Mendes',   '90873216574', 'carla.mendes@email.com', '61988880003', NULL, 'Quadra 10', 'Lote 2', 'Taguatinga', 'Brasília', '72000-000'),
(4, 'Diego Ferreira', '82310746287', 'diego.ferreira@email.com', '61988880004', NULL, 'Rua do Sol', '99', 'Guará', 'Brasília', '71000-000'),
(5, 'Eduarda Castro', '29088873456', 'eduarda.castro@email.com', '61988880005', '6134440005', 'SQN 305', 'Bloco A', 'Asa Norte', 'Brasília', '70700-000');

SELECT id_tutor, nome, cidade, bairro FROM tutor;

INSERT INTO pet (id_pet, id_tutor, nome, especie, porte, raca, sexo) VALUES
(1, 1, 'Bolinha', 'Cão', 'Pequeno', 'Poodle', 'M'),
(2, 2, 'Mimi', 'Gato', 'Pequeno', 'Siamês', 'F'),
(3, 3, 'Rex', 'Cão', 'Grande',  'Pastor Alemão', 'M'),
(4, 4, 'Pipoca', 'Cão', 'Médio',   'Beagle', 'F'),
(5, 5, 'Pingo', 'Gato', 'Pequeno', 'Persa', 'M');

INSERT INTO medicamento (id_medicamento, nome, principio_ativo) VALUES
(1, 'Drontal',      'Pamoato de pirantel + Praziquantel'),
(2, 'Frontline',    'Fipronil'),
(3, 'Amoxicilina',  'Amoxicilina triidratada'),
(4, 'Dipirona Vet', 'Dipirona sódica'),
(5, 'Meloxicam',    'Meloxicam');

INSERT INTO servico (id_servico, valor, nome, descricao) VALUES
(1, 80.00,  'Consulta Veterinária', 'Consulta clínica geral de rotina'),
(2, 60.00,  'Tosa Higiênica', 'Corte de pelos nas patas e barriga'),
(3, 120.00, 'Tosa Completa', 'Tosa completa na máquina e tesoura'),
(4, 150.00, 'Banho e Tosa', 'Banho com shampoo neutro e tosa higiênica'),
(5, 200.00, 'Cirurgia de Pequeno Porte', 'Procedimentos simples sob anestesia local'),
(6, 90.00,  'Vacinação', 'Aplicação de vacinas anuais');


INSERT INTO pacote (id_pacote, valor, nome, descricao) VALUES
(1, 350.00, 'Pacote Básico — 3 Banhos', 'Direito a 3 banhos simples por mês'),
(2, 500.00, 'Pacote Premium — Banho + Tosa + Consulta', 'Pacote mensal de estética e saúde'),
(3, 250.00, 'Pacote Filhote — Vacinas + Consulta', 'Para pets até 6 meses'),
(4, 450.00, 'Pacote Senior — Check-up Completo', 'Exames e consulta para cães idosos'),
(5, 600.00, 'Pacote VIP — Serviços Ilimitados/Mês', 'Acesso total aos serviços básicos');


INSERT INTO pacote_servico(id_pacote, id_servico, quantidade) VALUES
(1, 4, 3),
(2, 4, 2), 
(2, 1, 1), 
(3, 1, 1), 
(3, 6, 2); 

SELECT PS.id_pacote, P.nome as Pacote, S.nome as Servico, PS.quantidade 
FROM pacote_servico PS
INNER JOIN pacote P on P.id_pacote = PS.id_pacote
INNER JOIN servico S on S.id_servico = PS.id_servico;


INSERT INTO prontuario (id_prontuario, id_pet, historico, observacoes) VALUES
(1, 1, 'Vacinação V8 em dia. Sem alergias conhecidas.', NULL),
(2, 2, 'Gato castrado. Antirrábica aplicada.', 'Sensível a dipirona'),
(3, 3, 'Histórico de displasia leve. V10 atualizada.', NULL),
(4, 4, 'Sem histórico relevante. Vacinação em dia.', NULL),
(5, 5, 'Felino com predisposição a bola de pelo. Leucemia vacinada.', 'Uso contínuo de malte');

INSERT INTO vacinacao (id_vacinacao, id_prontuario, id_veterinario, nome_vacina, data_vacinacao, dose, observacoes) VALUES
(1, 1, 1, 'V8',         '2024-01-10', '1ª dose', NULL),
(2, 2, 2, 'Antirrábica','2024-02-15', 'Anual', NULL),
(3, 3, 3, 'V10',        '2024-03-20', '2ª dose', NULL),
(4, 4, 4, 'Giárdia',    '2024-04-05', '1ª dose', NULL),
(5, 5, 5, 'Leucemia',   '2024-05-12', 'Reforço', NULL);

SELECT V.id_vacinacao, PT.nome AS pet, F.nome AS veterinario, V.nome_vacina, V.data_vacinacao
FROM vacinacao V
INNER JOIN prontuario PR ON PR.id_prontuario = V.id_prontuario
INNER JOIN pet PT ON PT.id_pet = PR.id_pet
INNER JOIN funcionario F ON F.id_funcionario = V.id_veterinario;


INSERT INTO prescricao (id_prescricao, id_pet, id_veterinario, id_medicamento, posologia, data_prescricao) VALUES
(1, 1, 4, 2, '1 pipeta no dorso', '2024-01-15'),
(2, 2, 5, 1, 'Meio comprimido em jejum', '2024-02-20'),
(3, 3, 2, 4, '1 comprimido de 8/8h por 3 dias', '2024-03-25'),
(4, 4, 3, 5, '1mg/kg ao dia por 5 dias', '2024-04-10'),
(5, 5, 1, 3, '2ml a cada 12h por 7 dias', '2024-05-15');


INSERT INTO atendimento (id_atendimento, id_pet, id_servico, id_funcionario, data, horario, observacoes) VALUES
(1, 4, 1, 13, '2024-01-10', '19:00:00', 'Animal muito agitado'),
(2, 2, 2, 14, '2024-02-15', '10:30:00', NULL),
(3, 1, 3, 11, '2024-03-20', '11:00:00', NULL),
(4, 5, 4, 15, '2024-04-05', '14:00:00', 'Usar shampoo hipoalergênico'),
(5, 3, 5, 12, '2024-05-12', '16:00:00', NULL);


INSERT INTO assinatura(id_assinatura, id_pacote, id_pet, data_inicio, data_fim, status) VALUES
(1, 4, 3, '2026-02-19', NULL, 'Ativo'),
(2, 1, 5, '2026-05-07', NULL, 'Ativo'),
(3, 2, 1, '2026-06-28', '2026-09-22', 'Inativo'),
(4, 5, 2, '2025-12-10', NULL, 'Ativo'),
(5, 3, 4, '2026-06-11', '2026-08-01', 'Inativo'); 

SELECT A.id_assinatura, P.nome as Pet, PCT.nome as Pacote, A.status
FROM assinatura A
INNER JOIN pet P ON P.id_pet = A.id_pet
INNER JOIN pacote PCT ON PCT.id_pacote = A.id_pacote;