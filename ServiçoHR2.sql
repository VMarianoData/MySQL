create database db_servico_rh2;

use db_servico_rh2;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
primary key (id),
colaborador_id bigint,
foreign key (colaborador_id) references tb_cargos(id)
);

create table tb_cargos(
id bigint auto_increment,
cargo varchar(255) not null,
salario decimal not null,
primary key (id)
);

select * from tb_funcionarios;
select * from tb_cargos;

insert into tb_cargos (cargo, salario) values ("Dev", 6000.00);
insert into tb_cargos (cargo, salario) values ("Prof", 15000.00);

insert into tb_funcionarios (nome, idade, colaborador_id) values ("Lucas", 24, 1);
insert into tb_funcionarios (nome, idade, colaborador_id) values ("Tiago", 22,1);
insert into tb_funcionarios (nome, idade, colaborador_id) values ("Geandro", 42,1);
insert into tb_funcionarios (nome, idade, colaborador_id) values ("AimÃ©e", 17,2);
insert into tb_funcionarios (nome, idade, colaborador_id) values ("Gabriela", 27,2);

select * from tb_funcionarios inner join tb_cargos on tb_cargos.id = tb_funcionarios.colaborador_id;

select * from tb_funcionarios left join tb_cargos on tb_cargos.id = tb_funcionarios.colaborador_id;

select * from tb_funcionarios right join tb_cargos on tb_cargos.id = tb_funcionarios.colaborador_id;

select tb_funcionarios.nome , tb_funcionarios.idade, tb_cargos.salario from tb_funcionarios 
inner join tb_cargos on tb_cargos.id = tb_funcionarios.colaborador_id;

select tb_funcionarios.nome, tb_cargos.cargo, tb_cargos.salario from tb_funcionarios inner join 
tb_cargos on tb_cargos.id = tb_funcionarios.colaborador_id where tb_cargos.cargo = 'Dev';

update tb_funcionarios set nome = 'Aimee' where id = 4