CREATE TABLE IF NOT EXISTS `medico` (
	`id_medico` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nome_medico` varchar(100) NOT NULL,
	`crm_medico` varchar(10) NOT NULL,
	`especialidade_medico` varchar(20) NOT NULL,
	PRIMARY KEY (`id_medico`)
);

CREATE TABLE IF NOT EXISTS `paciente` (
	`id_paciente` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nome_paciente` varchar(100) NOT NULL,
	`cpf_paciente` varchar(14) NOT NULL,
	`email_paciente` varchar(100) NOT NULL,
	`dt_nasc_paciente` date NOT NULL,
	`endereco_paciente` varchar(100) NOT NULL,
	`sexo_paciente` binary(1) NOT NULL,
	PRIMARY KEY (`id_paciente`)
);

CREATE TABLE IF NOT EXISTS `consulta` (
	`id_consulta` int AUTO_INCREMENT NOT NULL UNIQUE,
	`data_consulta` date NOT NULL,
	`hora_consulta` time NOT NULL,
	`descricao_consulta` text NOT NULL,
	`medico_id_medico` int NOT NULL UNIQUE,
	`paciente_id_paciente` int NOT NULL UNIQUE,
	PRIMARY KEY (`id_consulta`)
);



ALTER TABLE `consulta` ADD CONSTRAINT `consulta_fk4` FOREIGN KEY (`medico_id_medico`) REFERENCES `medico`(`id_medico`);

ALTER TABLE `consulta` ADD CONSTRAINT `consulta_fk5` FOREIGN KEY (`paciente_id_paciente`) REFERENCES `paciente`(`id_paciente`);