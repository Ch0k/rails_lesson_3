CREATE DATABASE test_guru;
CREATE TABLE tests(
  id serial PRIMARY KEY,
  title varchar(50),
  level int,
  category_id int
);
CREATE TABLE categories(
  id serial PRIMARY KEY,
  title varchar(50)
);
CREATE TABLE questions(
  id serial PRIMARY KEY,
  body text,
  test_id int
);
INSERT INTO categories(title) VALUES
('frontend'), 
('backend'), 
('devops');

INSERT INTO tests(title, category_id) VALUES
('ruby', 2, 2), 
('html', 1, 2), 
('css', 1, 3), 
('ansible', 3, 3),
('docker', 3, 1);

INSERT INTO questions(body, test_id) VALUES
('Какой тег html для заголовка?', 2), 
('Какой тег html для формы?', 2), 
('Какое css свойство меняет размер шрифта?', 3), 
('Какая команда docker запускает докер контейнер?', 5),
('Нужно ли устанавливаеть агент на хосте для ansible?', 4);

SELECT * FROM tests WHERE level = 2 AND level = 3

SELECT * FROM questions WHERE test_id = 2

SELECT * FROM tests WHERE level = 2 AND level = 3

DELETE * FROM questions WHERE test_id = 1;

UPDATE tests SET title='ruby' and level=1 WHERE title='ruby';

SELECT * FROM tests JOIN categories ON tests.category_id = categories.id;

SELECT * FROM questions JOIN tests ON questions.test_id = tests.id;