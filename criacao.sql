create database Petshop;

use Petshop;

create table tutor(
id_tutor int primary key,
nome varchar(255) not null,
cpf varchar(11) not null unique,
email varchar(255) not null unique
);

create table pet(
id_pet int primary key,
id_tutor int not null,
nome varchar(255) not null,
especie varchar(255) not null,
porte varchar(50) not null,
raca varchar(50) not null,
sexo char not null,

constraint Dono
foreign key (id_tutor)
 references tutor(id_tutor)
 on delete restrict
);

create table funcionario(
id_funcionario int primary key,
nome varchar(255) not null,
cpf varchar(11) not null unique,
email varchar(255) not null unique,
telefone varchar(255) not null unique
);

create table veterinario(
id_funcionario int not null unique,
id_veterinario int primary key,
crmv varchar(255) not null,
formacao varchar(255) not null,
constraint func_veterinario
foreign key (id_funcionario)
 references funcionario(id_funcionario)
 on delete restrict
);

create table tosador(
id_funcionario int not null unique,
id_tosador int primary key,
certificacao varchar(255) not null,

constraint func_tosador
foreign key (id_funcionario)
 references funcionario(id_funcionario)
 on delete restrict
);

create table atendente(
id_funcionario int not null unique,
id_atendente int primary key,
turno char not null,

constraint func_atendente
foreign key (id_funcionario)
 references funcionario(id_funcionario)
 on delete restrict
);

create table medicamento(
id_medicamento int primary key,
nome varchar(255) not null,
principio_ativo varchar(255) not null
);

create table servico(
id_servico int primary key,
valor decimal(10,2) not null,
nome varchar(255) not null
);

create table vacinacao(
id_vacinacao int primary key,
id_pet int not null,
id_veterinario int not null, 
nome_vacina varchar(100) not null,
data_vacinacao datetime default CURRENT_TIMESTAMP(),
dose varchar(100) not null,

constraint pet_vacina
foreign key (id_pet)
 references pet(id_pet)
 on delete restrict ,
 
 constraint veterinario_vacina
 foreign key (id_veterinario)
 references veterinario(id_veterinario)
 on delete restrict

);

create table atendimento(
id_atendimento int primary key,
id_pet int not null,
id_servico int not null,
id_funcionario int not null, 
data_atendimento datetime default CURRENT_TIMESTAMP(),

constraint pet_atendimento
foreign key (id_pet)
 references pet(id_pet)
 on delete restrict ,
 
 constraint funcionario_atendimento
 foreign key (id_funcionario)
 references funcionario(id_funcionario)
 on delete restrict

);

create table prescricao(
id_prescricao int primary key,
id_pet int not null,
id_veterinario int not null, 
id_medicamento int not null,

constraint pet_prescricao
foreign key (id_pet)
 references pet(id_pet)
 on delete restrict ,
 
 constraint veterinario_prescricao
 foreign key (id_veterinario)
 references veterinario(id_veterinario)
 on delete restrict,
 
 constraint medicamento_prescricao
foreign key (id_medicamento)
 references medicamento(id_medicamento)
 on delete restrict
);

create table pacote(
id_pacote int primary key,
valor decimal(10,2) not null,
nome varchar(255) not null
);

create table prontuario(
id_prontuario int primary key,
id_pet int not null,
historico varchar(255) not null,

constraint pet_prontuario
foreign key (id_pet)
 references pet(id_pet)
 on delete restrict

);

CREATE TABLE assinatura(
id_assinatura int primary key,
id_pacote int not null,
id_pet int not null,
data_inicio date not null,
data_fim date,
ativo char(1) not null,

constraint pet_assinatura
foreign key (id_pet)
 references pet(id_pet)
 on delete restrict ,
 
 constraint pacote_assinatura
foreign key (id_pacote)
 references pacote(id_pacote)
 on delete restrict

);