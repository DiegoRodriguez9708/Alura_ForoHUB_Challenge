CREATE TABLE cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    activo BIT(1) NOT NULL,
    categoria ENUM('ELECTRO1', 'ELECTRO2', 'ELECTRO3', 'POTENCIA', 'IA') NOT NULL,
    name VARCHAR(255) NOT NULL
);