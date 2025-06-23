CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    favorite_insult VARCHAR(255)
);

INSERT INTO users (name, favorite_insult) VALUES
('Alice', 'Tu pues des yeux'),
('Bob', 'Espèce de clavier sans touches'),
('Charlie', 'Tête de 404'),
('Dave', 'Bug ambulant'),
('Eve', 'Erreur 418 je suis une théière')