create database Petshop;

use Petshop;

create table tutor(
    id_tutor int primary key,
    nome varchar(255) not null,
    cpf varchar(14) not null unique,
    email varchar(255) not null,
    telefone_principal varchar(20) not null,
    telefone_secundario varchar(20),
    rua varchar(255),
    numero varchar(20),
    bairro varchar(100),
    cidade varchar(100),
    cep varchar(10)
);

create table pet(
    id_pet int primary key,
    id_tutor int not null,
    nome varchar(255) not null,
    especie varchar(255) not null,
    raca varchar(100) not null,
    porte varchar(50) not null,
    sexo varchar(20) not null,
    constraint fk_pet_tutor
        foreign key (id_tutor) references tutor(id_tutor)
        on delete restrict
);

create table funcionario(
    id_funcionario int primary key,
    nome varchar(255) not null,
    cpf varchar(14) not null unique,
    email varchar(255) not null,
    telefone varchar(20) not null
);

create table veterinario(
    id_funcionario int primary key,
    crmv varchar(50) not null unique,
    formacao varchar(255) not null,
    constraint fk_vet_func
        foreign key (id_funcionario) references funcionario(id_funcionario)
        on delete restrict
);

create table tosador(
    id_funcionario int primary key,
    certificacao varchar(255) not null,
    constraint fk_tosador_func
        foreign key (id_funcionario) references funcionario(id_funcionario)
        on delete restrict
);

create table atendente(
    id_funcionario int primary key,
    turno varchar(50) not null,
    constraint fk_atendente_func
        foreign key (id_funcionario) references funcionario(id_funcionario)
        on delete restrict
);

create table medicamento(
    id_medicamento int primary key,
    nome varchar(255) not null,
    principio_ativo varchar(255) not null
);

create table servico(
    id_servico int primary key,
    nome varchar(255) not null,
    descricao varchar(255),
    valor decimal(10,2) not null 
);

create table atendimento(
    id_atendimento int primary key,
    id_pet int not null,
    id_servico int not null,
    id_funcionario int not null, 
    data date not null,
    horario time not null,
    observacoes varchar(255),
    constraint fk_atendimento_pet
        foreign key (id_pet) references pet(id_pet)
        on delete restrict,
    constraint fk_atendimento_servico
        foreign key (id_servico) references servico(id_servico)
        on delete restrict,
    constraint fk_atendimento_func
        foreign key (id_funcionario) references funcionario(id_funcionario)
        on delete restrict
);

create table prontuario(
    id_prontuario int primary key,
    id_pet int not null unique,
    historico varchar(255) not null,
    observacoes varchar(255),
    constraint fk_prontuario_pet
        foreign key (id_pet) references pet(id_pet)
        on delete restrict
);

create table vacinacao(
    id_vacinacao int primary key,
    id_prontuario int not null,
    id_veterinario int not null, 
    nome_vacina varchar(100) not null,
    data_vacinacao date not null,
    dose varchar(100) not null,
    observacoes varchar(255),
    constraint fk_vacinacao_prontuario
        foreign key (id_prontuario) references prontuario(id_prontuario)
        on delete restrict,
    constraint fk_vacinacao_veterinario
        foreign key (id_veterinario) references veterinario(id_funcionario)
        on delete restrict
);

create table prescricao(
    id_prescricao int primary key,
    id_veterinario int not null, 
    id_pet int not null,
    id_medicamento int not null,
    posologia varchar(255) not null,
    data_prescricao date not null,
    constraint fk_prescricao_vet
        foreign key (id_veterinario) references veterinario(id_funcionario)
        on delete restrict,
    constraint fk_prescricao_pet
        foreign key (id_pet) references pet(id_pet)
        on delete restrict,
    constraint fk_prescricao_med
        foreign key (id_medicamento) references medicamento(id_medicamento)
        on delete restrict
);

create table pacote(
    id_pacote int primary key,
    nome varchar(255) not null,
    descricao varchar(255),
    valor decimal(10,2) not null 
);

create table pacote_servico(
    id_pacote int not null,
    id_servico int not null,
    quantidade int,
    primary key (id_pacote, id_servico), -- PK Composta[cite: 8]
    constraint fk_ps_pacote
        foreign key (id_pacote) references pacote(id_pacote)
        on delete restrict,
    constraint fk_ps_servico
        foreign key (id_servico) references servico(id_servico)
        on delete restrict
);

create table assinatura(
    id_assinatura int primary key,
    id_pet int not null,
    id_pacote int not null,
    data_inicio date not null,
    data_fim date,
    status varchar(50) not null,
    constraint fk_assinatura_pet
        foreign key (id_pet) references pet(id_pet)
        on delete restrict,
    constraint fk_assinatura_pacote
        foreign key (id_pacote) references pacote(id_pacote)
        on delete restrict
);