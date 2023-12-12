-- Crear la tabla estudiante
CREATE TABLE estudiante (
    id_estudiante serial PRIMARY KEY,
    rut VARCHAR(20),
    nombres VARCHAR(100),
    apellidos VARCHAR(100),
    email VARCHAR(100),
    cod_carr INT,
    FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera)
);

-- Crear la tabla carrera
CREATE TABLE carrera (
    id_carrera serial PRIMARY KEY,
    nombre_carrera VARCHAR(100),
    min_asig_semestre INT
);

-- Crear la tabla asignatura
CREATE TABLE asignatura (
    id_asignatura serial PRIMARY KEY,
    nom_asignatura VARCHAR(100),
    nivel INT,
    cupos_maximos INT
);

-- Crear la tabla horario
CREATE TABLE horario (
    id_horario serial PRIMARY KEY,
    cod_asig INT,
    dia VARCHAR(20),
    hora_inicio TIME,
    hora_fin TIME,
    FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura)
);

-- Crear la tabla inscripcion
CREATE TABLE inscripcion (
    id_inscripcion serial PRIMARY KEY,
    cod_alumno INT,
    cod_asig INT,
    semestre INT,
    oportunidad INT,
    FOREIGN KEY (cod_alumno) REFERENCES estudiante(id_estudiante),
    FOREIGN KEY (cod_asig) REFERENCES asignatura(id_asignatura)
);

-- Crear la tabla prerrequisito
CREATE TABLE prerrequisito (
    id_prerrequisito serial PRIMARY KEY,
    cod_asig INT,
    cod_prerrequisito INT,
    FOREIGN KEY (cod_asig) REFERENCES asignatura(id_asignatura),
    FOREIGN KEY (cod_prerrequisito) REFERENCES asignatura(id_asignatura)
);

-- Crear la tabla nota
CREATE TABLE nota (
    id_nota serial PRIMARY KEY,
    anio INT,
    sem INT,
    cod_alumno INT,
    cod_asig INT,
    nota FLOAT,
    FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante),
    FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura)
);

-- Crear la tabla estudiante_carrera
CREATE TABLE estudiante_carrera (
    id_estudiante_carrera serial PRIMARY KEY,
    FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante),
    FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera)
);

-- Crear la tabla asignatura_prerrequisito
CREATE TABLE asignatura_prerrequisito (
    id_asignatura_prerrequisito serial PRIMARY KEY,
    FOREIGN KEY (id_asignatura) REFERENCES asignatura(id_asignatura),
    FOREIGN KEY (id_prerrequisito) REFERENCES prerrequisito(id_prerrequisito)
);
