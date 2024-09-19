CREATE TABLE categories(
    category_id VARCHAR(20),
    category VARCHAR(50) NOT NULL UNIQUE
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategories(
    subcategory_id VARCHAR(20),
    subcategory VARCHAR(50) NOT NULL UNIQUE
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts(
    contact_id INT, 
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
    PRIMARY KEY (contact_id)
);

CREATE TABLE campaigns(
    cf_id INT, 
    contact_id INT, 
    company_name VARCHAR(200),
    description VARCHAR(200),
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(20),
    backers_count INT,
    country VARCHAR(10),
    currency VARCHAR(10),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(20),
    subcategory_id VARCHAR(20),
    PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
);

