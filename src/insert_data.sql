INSERT INTO days (dayName) VALUES
('saturday'), ('sunday'), ('monday'), ('tuesday'), ('wednesday'), ('thursday'), ('friday');

INSERT INTO users (fullName, nationalId, role) VALUES
('sadra Ahmadi', '0011223344', 'student'),
('Dr. Ghatei', '5566778899', 'professor');

INSERT INTO students (id, studentId, major) VALUES
(1, 'stu1', 'Computer Science');

INSERT INTO professors (id, personalId, department, education) VALUES
(2, 'prof2001', 'MCS', 'Professor');

INSERT INTO foodItem (foodName, price, publishDate, dayId) VALUES
('Kebab', 90000, '2025-05-16', 4),
('pizza', 85000, '2025-05-16', 4);

INSERT INTO orders (personId, foodId, orderDate, status) VALUES
(1, 1, '2025-05-16', 'confirmed'),
(2, 2, '2025-05-16', 'pending');


