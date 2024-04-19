create database if not exists hospital;
use hospital

create table if not exists pacientes(
cpf-paciente varchar15) primary key,
nome varchar(45) not null,
data_nasc date not null,
telefone varchar(45) not null
e-mail varchar(45));

create table if not exists departamentos(
cod_especialidade int primary key,
nome_especialidade varchar(45));

create table if not exists medicos(
CRM int,
UF char(2),
primary key(CRM,UF),
NOME VARCHAR(45) NOT NULL,
EMAIL VARCHAR(45) NOT NULL,
TELEFONE VARCHAR(45) NOT NULL,
DEPTO_COD_ESPEC INT NOT NULL,
constraint DEPTO_MED foreign key(DEPTO_COD_ESPEC)
references DEPARTAMENTOS(COD_ESPECIALIDADE));

CREATE TABLE IF NOT EXISTS CONSULTAS(
ID_CONSULTA INT PRIMARY KEY,
ANAMESE TEXT NOT NULL,
DATA_CONS DATE NOT NULL,
HORA_CONS TIME NOT NULL,
CRM INT NOT NULL,
UF CHAR(2) NOT NULL,
CPF_PACIENTE VARCHAR(15) NOT NULL,
constraint MED_CONS foreign key(CRM,UF)
references MEDICOS(CRM,YF),
constraint PAC_CONS foreign key(CPF_PACIENTE)
references PACIENTES(CPF_PACIENTE));


















