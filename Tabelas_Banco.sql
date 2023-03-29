CREATE TABLE empresa_p(
empresa_pid smallint NOT NULL,
nome varchar(50),
cnpj varchar(50),
primary key (empresa_pid)
);

CREATE TABLE tecnologia(
	ID smallint NOT NUlL,
	nome varchar(50),
	area_tec varchar(50),
	primary key (ID)
	);
	
CREATE TABLE registro(
	ID smallint NOT NULL,
	id_tec int,
	id_emp int,
	primary key (ID),
	FOREIGN key (id_tec) REFERENCES tecnologia(ID),
	FOREIGN key (id_emp) REFERENCES empresa_p(empresa_pid)
);

CREATE TABLE relatorio(
	ID smallint NOT NULL,
	id_reg int,
	dia date,
	primary key (ID),
	FOREIGN key (id_reg) REFERENCES registro(ID)
);

