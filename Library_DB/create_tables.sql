CREATE TABLE Librarian (
    id SERIAL PRIMARY KEY,
    login VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE Reader (
    id SERIAL PRIMARY KEY,
    login VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    document_type_id INT NOT NULL,
    document_number VARCHAR(50) NOT NULL,
    FOREIGN KEY (document_type_id) REFERENCES DocumentType(id)
);
CREATE TABLE DocumentType (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL
);
CREATE TABLE Book (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    publisher_code VARCHAR(50),
    publisher_code_type_id INT,
    year_of_publication INT,
    country_of_publication VARCHAR(100),
    city_of_publication VARCHAR(100),
    FOREIGN KEY (publisher_code_type_id) REFERENCES PublisherCodeType(id)
);
CREATE TABLE Author (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    birth_date DATE
);
CREATE TABLE PublisherCodeType (
    id SERIAL PRIMARY KEY,
    code_type_name VARCHAR(50) NOT NULL
);
CREATE TABLE Book_Author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Book(id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES Author(id) ON DELETE CASCADE
);