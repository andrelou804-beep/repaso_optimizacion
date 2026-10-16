create database unitecnica;

use unitecnica;

 create table estudiantes (
 estudiantes_id int(10) primary key auto_increment,
 nombre varchar(20) not null,
 telefono int(20) not null
 
 );
 
 
ALTER TABLE estudiantes MODIFY COLUMN telefono VARCHAR(20);

insert into estudiantes (nombre, telefono) values
('camilo', '3287654562'),
('andres', '3276546789'),
('david', '3276546789'),
('juan', '3276546789'),
('wilson', '3276546789');

select * from estudiantes;

create table docentes (
  docente_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  telefono VARCHAR(20) not null
  
);


insert into docentes (nombre, telefono) VALUES
('Carlos Pérez', '3101234567'),
('María Gómez', '3109876543'),
('alfredo zapata', '3270098767');


create table administrativos (
    administrativo_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    cargo VARCHAR(50)
    
);

INSERT INTO administrativos (nombre, cargo) VALUES
('Laura Ríos', 'Secretaria'),
('Pedro Mora', 'Coordinador');


CREATE TABLE salones (
    aula_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    capacidad INT
    
);

insert into salones (nombre,capacidad) values 
('Aula 101', 30),
('Aula 102', 25),
('Aula 108', 30),
('Aula 109', 20);


create table cursos (
    curso_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    docente_id INT NOT NULL,
    aula_id INT NOT NULL,
    FOREIGN KEY (docente_id) REFERENCES docentes(docente_id),
    FOREIGN KEY (aula_id) REFERENCES salones(aula_id)
);

insert into cursos (nombre, docente_id, aula_id) VALUES
('Bases de Datos', 1, 1),
('Programación', 2, 2),
('Matemáticas', 1, 2);

create table matricula (
    estudiantes_id INT NOT NULL,
    curso_id INT NOT NULL,
    PRIMARY KEY (estudiantes_id, curso_id),
    FOREIGN KEY (estudiantes_id) REFERENCES estudiantes(estudiantes_id),
    FOREIGN KEY (curso_id) REFERENCES cursos(curso_id)
);

insert into matricula (estudiantes_id, curso_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(4, 2),
(5, 1);
