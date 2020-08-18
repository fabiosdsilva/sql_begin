create database consultorio
	default charset = utf8mb4
	default collate = utf8mb4_unicode_520_ci;

use consultorio;

create table medico(
	postuario tinyint not null auto_increment,
	nome varchar (30),
	especialidade varchar (20),
	primary key (postuario)
);

create table paciente(
	postuario tinyint not null auto_increment,
	nome varchar (30) not null,
	urgencia varchar (30) not null,
	primary key (postuario)
);

create table consulta(
	id_medico tinyint not null,
	nome_medico varchar (30),
	id_paciente tinyint not null,
	nome_paciente tinyint not null,
	primary key (id_medico)
);

insert into medico (nome, especialidade) values ("Dr. Jambeiro", "Ortopedia");
insert into medico (nome, especialidade) values ("Dr. Lucas", "Cirurgião");

insert into paciente (nome, urgencia) values ("Maiane dos Santos", "Dor no joelho esquerdo");
insert into paciente (nome, urgencia) values ("Flavio Silva", "Arritmia Aardíaca");

insert into consulta (nome_medico, nome_paciente) values ("Dr. Jambeiro", "Maiane dos Santos");
insert into consulta (nome_medico, nome_paciente) values ("Dr. Lucas", "Arritmia Cardíaca");


