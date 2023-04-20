
insert into Empresa.Department values ('Investigacao',1,'21312332','2010-08-02');
insert into Empresa.Department values ('Comercial',2,'321233765','2013-05-16');
insert into Empresa.Department values ('Logistica',3,'41124234','2013-05-16');
insert into Empresa.Department values ('Recursos Humanos',4,'12652121','2014-04-02');
insert into Empresa.Department values ('Desporto',5,NULL,NULL);

insert into Empresa.Employee values ('Paula','A','Sousa','183623612','2001-08-11','Rua da FRENTE','F',1450.00,NULL,3);
insert into Empresa.Employee values ('Carlos','D','Gomes','21312332','2000-01-01','Rua XPTO','M',1200.00,NULL,1);
insert into Empresa.Employee values ('Juliana','A','Amaral','321233765','1980-08-11','Rua BZZZZ','F',1350.00,NULL,3);
insert into Empresa.Employee values ('Maria','I','Pereira','342343434','2001-05-01','Rua JANOTA','F',1250.00,'21312332',2);
insert into Empresa.Employee values ('Joao','G','Costa','41124234','2001-01-01','Rua YGZ','M',1300.00,'21312332',2);
insert into Empresa.Employee values ('Ana','L','Silva','12652121','1990-03-03','Rua ZIG ZAG','F',1400.00,'21312332',2);

insert into [Empresa.Dependent] values ('21312332' ,'Joana Costa','F','2008-04-01', 'Filho');
insert into [Empresa.Dependent] values ('21312332' ,'Maria Costa','F','1990-10-05', 'Neto');
insert into [Empresa.Dependent] values ('21312332' ,'Rui Costa','M','2000-08-04','Neto');
insert into [Empresa.Dependent] values ('321233765','Filho Lindo','M','2001-02-22','Filho');
insert into [Empresa.Dependent] values ('342343434','Rosa Lima','F','2006-03-11','Filho');
insert into [Empresa.Dependent] values ('41124234' ,'Ana Sousa','F','2007-04-13','Neto');
insert into [Empresa.Dependent] values ('41124234' ,'Gaspar Pinto','M','2006-02-08','Sobrinho');

insert into Empresa.Dept_locations values (2,'Aveiro');
insert into Empresa.Dept_locations values (3,'Coimbra');

insert into Empresa.Project values ('Aveiro Digital',1,'Aveiro',3);
insert into Empresa.Project values ('BD Open Day',2,'Espinho',2);
insert into Empresa.Project values ('Dicoogle',3,'Aveiro',3);
insert into Empresa.Project values ('GOPACS',4,'Aveiro',3);

insert into Empresa.Works_on values ('183623612',1,20.0);
insert into Empresa.Works_on values ('183623612',3,10.0);
insert into Empresa.Works_on values ('21312332' ,1,20.0);
insert into Empresa.Works_on values ('321233765',1,25.0);
insert into Empresa.Works_on values ('342343434',1,20.0);
insert into Empresa.Works_on values ('342343434',4,25.0);
insert into Empresa.Works_on values ('41124234' ,2,20.0);
insert into Empresa.Works_on values ('41124234' ,3,30.0);