use Petshop;

UPDATE tutor SET email = 'ana.nova@email.com' WHERE id_tutor = 1;
UPDATE tutor SET nome = 'Bruno Souza Santos' WHERE id_tutor = 2;
UPDATE tutor SET cpf = '90873216570' WHERE id_tutor = 3;


UPDATE pet SET porte = 'Médio' WHERE id_pet = 1;
UPDATE pet SET raca = 'Siamês Mix' WHERE id_pet = 2;
UPDATE pet SET nome = 'Rex T-Rex' WHERE id_pet = 3;


UPDATE funcionario SET telefone = '61991110099' WHERE id_funcionario = 1;
UPDATE funcionario SET email = 'gabriel.costa@petshop.com' WHERE id_funcionario = 2;
UPDATE funcionario SET nome = 'Helena Rocha Lima' WHERE id_funcionario = 3;


UPDATE veterinario SET formacao = 'Medicina Veterinária - UnB (Especialista)' WHERE id_veterinario = 1;
UPDATE veterinario SET crmv = 'CRMV-DF-23456-X' WHERE id_veterinario = 2;
UPDATE veterinario SET formacao = 'Medicina Veterinária - IESB/Pós' WHERE id_veterinario = 3;


UPDATE tosador SET certificacao = 'Curso Avançado de Tosa - SENAC' WHERE id_tosador = 1;
UPDATE tosador SET certificacao = 'Certificação Internacional de Grooming Master' WHERE id_tosador = 2;
UPDATE tosador SET certificacao = 'Curso de Tosa Estética e Criativa - SEBRAE' WHERE id_tosador = 3;


UPDATE atendente SET turno = 'T' WHERE id_atendente = 1;
UPDATE atendente SET turno = 'N' WHERE id_atendente = 2;
UPDATE atendente SET turno = 'M' WHERE id_atendente = 3;


UPDATE medicamento SET nome = 'Drontal Plus' WHERE id_medicamento = 1;
UPDATE medicamento SET principio_ativo = 'Fipronil + S-metopreno' WHERE id_medicamento = 2;
UPDATE medicamento SET nome = 'Amoxicilina 250mg' WHERE id_medicamento = 3;


UPDATE servico SET valor = 90.00 WHERE id_servico = 1;
UPDATE servico SET nome = 'Tosa Higiênica Completa' WHERE id_servico = 2;
UPDATE servico SET valor = 130.00 WHERE id_servico = 3;


UPDATE vacinacao SET dose = 'Dose Única' WHERE id_vacinacao = 1;
UPDATE vacinacao SET data_vacinacao = '2024-02-16 10:30:00' WHERE id_vacinacao = 2;
UPDATE vacinacao SET nome_vacina = 'V10 Plus' WHERE id_vacinacao = 3;


UPDATE atendimento SET data_atendimento = '2024-01-11 19:00:00' WHERE id_atendimento = 1;
UPDATE atendimento SET id_funcionario = 11 WHERE id_atendimento = 2;
UPDATE atendimento SET id_servico = 4 WHERE id_atendimento = 3;


UPDATE prescricao SET id_medicamento = 3 WHERE id_prescricao = 1;
UPDATE prescricao SET id_veterinario = 1 WHERE id_prescricao = 2;
UPDATE prescricao SET id_medicamento = 5 WHERE id_prescricao = 3;


UPDATE pacote SET valor = 380.00 WHERE id_pacote = 1;
UPDATE pacote SET nome = 'Pacote Premium Plus' WHERE id_pacote = 2;
UPDATE pacote SET valor = 280.00 WHERE id_pacote = 3;


UPDATE prontuario SET historico = 'Vacinação V8 em dia. Alergia a picada de pulga.' WHERE id_prontuario = 1;
UPDATE prontuario SET historico = 'Gato castrado. Antirrábica e vermífugo aplicados.' WHERE id_prontuario = 2;
UPDATE prontuario SET historico = 'Histórico de displasia leve. Controle de peso iniciado.' WHERE id_prontuario = 3;


UPDATE assinatura SET ativo = 'N', data_fim = '2026-09-01' WHERE id_assinatura = 1;
UPDATE assinatura SET data_fim = '2026-12-31' WHERE id_assinatura = 2;
UPDATE assinatura SET ativo = 'S', data_fim = NULL WHERE id_assinatura = 3;