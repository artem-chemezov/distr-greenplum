-- Create a table to hold the test data
CREATE TABLE mytable (
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  address TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT
);

INSERT INTO mytable (first_name, last_name, email, phone_number, address, city, state, zip_code) VALUES 
('Alice', 'Johnson', 'alice@example.com', '555-1234', '123 Main St', 'Anytown', 'CA', '12345'),
('Bob', 'Smith', 'bob@example.com', '555-5678', '456 Oak St', 'Anytown', 'NY', '67890'),
('Charlie', 'Williams', 'charlie@example.com', '555-9012', '789 Elm St', 'Anytown', 'TX', '23456'),
('David', 'Jones', 'david@example.com', '555-3456', '246 Oak St', 'Othertown', 'CA', '34567'),
('Emma', 'Lee', 'emma@example.com', '555-7890', '135 Pine St', 'Othertown', 'NY', '45678'),
('Frank', 'Brown', 'frank@example.com', '555-1234', '579 Elm St', 'Anytown', 'TX', '23456'),
('Grace', 'Wilson', 'grace@example.com', '555-5678', '579 Main St', 'Othertown', 'CA', '34567'),
('Henry', 'Taylor', 'henry@example.com', '555-9012', '468 Maple St', 'Anytown', 'NY', '45678'),
('Isabella', 'Davis', 'isabella@example.com', '555-3456', '357 Pine St', 'Othertown', 'TX', '56789'),
('Jacob', 'Miller', 'jacob@example.com', '555-7890', '246 Elm St', 'Anytown', 'CA', '67890'),
('Katherine', 'Wilson', 'katherine@example.com', '555-1234', '579 Main St', 'Othertown', 'NY', '23456'),
('Liam', 'Brown', 'liam@example.com', '555-5678', '468 Oak St', 'Anytown', 'TX', '34567'),
('Mia', 'Taylor', 'mia@example.com', '555-9012', '357 Maple St', 'Othertown', 'CA', '45678'),
('Noah', 'Davis', 'noah@example.com', '555-3456', '246 Pine St', 'Anytown', 'NY', '56789'),
('Olivia', 'Miller', 'olivia@example.com', '555-7890', '135 Elm St', 'Othertown', 'TX', '67890'),
('Penelope', 'Wilson', 'penelope@example.com', '555-1234', '579 Maple St', 'Anytown', 'CA', '23456'),
('Quinn', 'Brown', 'quinn@example.com', '555-5678', '468 Main St', 'Othertown', 'NY', '34567'),
('Ryan', 'Taylor', 'ryan@example.com', '555-9012', '357 Oak St', 'Anytown', 'TX', '45678'),
('Thomas', 'Miller', 'thomas@example.com', '555-3456', '246 Maple St', 'Othertown', 'CA', '56789'),
('Uma', 'Wilson', 'uma@example.com', '555-7890', '135 Oak St', 'Anytown', 'NY', '67890'),
('Victor', 'Brown', 'victor@example.com', '555-1234', '579 Pine St', 'Othertown', 'TX', '23456'),
('Willow', 'Taylor', 'willow@example.com', '555-5678', '468 Elm St', 'Anytown', 'CA', '34567'),
('Xavier', 'Davis', 'xavier@example.com', '555-9012', '357 Main St', 'Othertown', 'NY', '45678'),
('Yara', 'Miller', 'yara@example.com', '555-3456', '246 Oak St', 'Anytown', 'TX', '56789'),
('Zachary', 'Wilson', 'zachary@example.com', '555-7890', '135 Pine St', 'Othertown', 'CA', '67890'),
('Abigail', 'Brown', 'abigail@example.com', '555-1234', '579 Elm St', 'Anytown', 'NY', '23456'),
('Benjamin', 'Taylor', 'benjamin@example.com', '555-5678', '468 Maple St', 'Othertown', 'TX', '34567'),
('Caitlin', 'Davis', 'caitlin@example.com', '555-9012', '357 Oak St', 'Anytown', 'CA', '45678'),
('Daniel', 'Miller', 'daniel@example.com', '555-3456', '246 Main St', 'Othertown', 'NY', '56789'),
('Elizabeth', 'Wilson', 'elizabeth@example.com', '555-7890', '135 Elm St', 'Anytown', 'TX', '67890'),
('Finn', 'Brown', 'finn@example.com', '555-1234', '579 Maple St', 'Othertown', 'CA', '23456'),
('Gabriella', 'Taylor', 'gabriella@example.com', '555-5678', '468 Pine St', 'Anytown', 'NY', '34567'),
('Henry', 'Davis', 'henry@example.com', '555-9012', '357 Maple St', 'Othertown', 'TX', '45678'),
('Isabelle', 'Miller', 'isabelle@example.com', '555-3456', '246 Elm St', 'Anytown', 'CA', '56789'),
('James', 'Wilson', 'james@example.com', '555-7890', '135 Oak St', 'Othertown', 'NY', '67890'),
('Katherine', 'Brown', 'katherine@example.com', '555-1234', '579 Main St', 'Anytown', 'TX', '23456'),
('Landon', 'Taylor', 'landon@example.com', '555-5678', '468 Elm St', 'Othertown', 'CA', '34567'),
('Mia', 'Davis', 'mia@example.com', '555-9012', '357 Pine St', 'Anytown', 'NY', '45678');


CREATE TABLE addresses (
  zip_code TEXT PRIMARY KEY,
  city TEXT
);

INSERT INTO addresses (zip_code, city) VALUES 
('45678', 'Berlin'),
('12345', 'Moscow'),
('67890', 'Paris'),
('56789', 'Amsterdam');