use Petshop;

UPDATE funcionario SET telefone = '61991110099' WHERE id_funcionario = 1;
UPDATE funcionario SET email = 'gabriel.costa.novo@petshop.com' WHERE id_funcionario = 2;

UPDATE veterinario SET formacao = 'Medicina Veterinária - UnB (Especialista)' WHERE id_funcionario = 1;
UPDATE veterinario SET crmv = 'CRMV-DF-23456-X' WHERE id_funcionario = 2;

UPDATE tosador SET certificacao = 'Curso Avançado de Tosa - SENAC' WHERE id_funcionario = 6;
UPDATE tosador SET certificacao = 'Certificação Internacional de Grooming Master' WHERE id_funcionario = 7;

UPDATE atendente SET turno = 'Tarde' WHERE id_funcionario = 11;
UPDATE atendente SET turno = 'Noite' WHERE id_funcionario = 12;

UPDATE tutor SET email = 'ana.nova@email.com' WHERE id_tutor = 1;
UPDATE tutor SET nome = 'Bruno Souza Santos', numero = '45B' WHERE id_tutor = 2;

UPDATE pet SET porte = 'Médio' WHERE id_pet = 1;
UPDATE pet SET raca = 'Siamês Mix' WHERE id_pet = 2;

UPDATE medicamento SET nome = 'Drontal Plus' WHERE id_medicamento = 1;
UPDATE medicamento SET principio_ativo = 'Fipronil + S-metopreno' WHERE id_medicamento = 2;

UPDATE servico SET valor = 95.00 WHERE id_servico = 1;
UPDATE servico SET nome = 'Tosa Higiênica Completa', descricao = 'Tosa higiênica e corte de unhas' WHERE id_servico = 2;

UPDATE pacote SET valor = 380.00 WHERE id_pacote = 1;
UPDATE pacote SET nome = 'Pacote Premium Plus' WHERE id_pacote = 2;

UPDATE pacote_servico SET quantidade = 4 WHERE id_pacote = 1 AND id_servico = 4;
UPDATE pacote_servico SET quantidade = 2 WHERE id_pacote = 2 AND id_servico = 1;

UPDATE prontuario SET historico = 'Vacinação V8 em dia. Alergia a picada de pulga.' WHERE id_prontuario = 1;
UPDATE prontuario SET observacoes = 'Monitorar peso do animal com urgência' WHERE id_prontuario = 3;

UPDATE vacinacao SET dose = 'Dose Única', observacoes = 'Pet estava levemente agitado' WHERE id_vacinacao = 1;
UPDATE vacinacao SET data_vacinacao = '2024-02-16' WHERE id_vacinacao = 2;


UPDATE prescricao SET id_medicamento = 3, posologia = '1 comprimido ao dia' WHERE id_prescricao = 1;
UPDATE prescricao SET id_veterinario = 1 WHERE id_prescricao = 2;

UPDATE atendimento SET data = '2024-01-11', horario = '19:30:00' WHERE id_atendimento = 1;
UPDATE atendimento SET id_funcionario = 11, observacoes = 'Atendimento reagendado pelo tutor' WHERE id_atendimento = 2;

UPDATE assinatura SET status = 'Inativo', data_fim = '2026-09-01' WHERE id_assinatura = 1;
UPDATE assinatura SET status = 'Ativo', data_fim = NULL WHERE id_assinatura = 3;