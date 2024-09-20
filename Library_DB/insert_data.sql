INSERT INTO Librarian (login, password, email) VALUES
('lib1', 'password1', 'lib1@library.com'),
('lib2', 'password2', 'lib2@library.com');

INSERT INTO DocumentType (type_name) VALUES
('Passport'),
('Driver License'),
('ID Card');

INSERT INTO Reader (login, password, email, first_name, last_name, document_type_id, document_number) VALUES
('reader1', 'password1', 'reader1@library.com', 'Ivan', 'Ivanov', 1, 'AA123456'),
('reader2', 'password2', 'reader2@library.com', 'Petro', 'Petrov', 2, 'BB654321');
INSERT INTO PublisherCodeType (code_type_name) VALUES
('ISBN'),
('BBK');

INSERT INTO Book (title, publisher_code, publisher_code_type_id, year_of_publication, country_of_publication, city_of_publication) VALUES
('War and Peace', '978-3-16-148410-0', 1, 1869, 'Russia', 'Moscow'),
('1984', '978-0-452-28423-4', 1, 1949, 'UK', 'London');

INSERT INTO Author (first_name, last_name, middle_name, birth_date) VALUES
('Leo', 'Tolstoy', 'Nikolayevich', '1828-09-09'),
('George', 'Orwell', NULL, '1903-06-25');

INSERT INTO Book_Author (book_id, author_id) VALUES
(1, 1), -- Leo Tolstoy написав "War and Peace"
(2, 2); -- George Orwell написав "1984"