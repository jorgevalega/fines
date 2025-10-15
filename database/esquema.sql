CREATE DATABASE IF NOT EXISTS fines DEFAULT CHARACTER SET utf8mb4;
USE fines;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255),
    google_id VARCHAR(255)
);

CREATE TABLE transacciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    tipo ENUM('ingreso', 'egreso') NOT NULL,
    descripcion VARCHAR(255),
    monto DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE pagos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    descripcion VARCHAR(255),
    fecha_pago DATE,
    pagado BOOLEAN DEFAULT FALSE,
    notificar BOOLEAN DEFAULT TRUE,
    aviso_dias INT DEFAULT 3,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE gastos_fijos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    categoria VARCHAR(100),
    subcategoria VARCHAR(100),
    monto DECIMAL(10,2),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
