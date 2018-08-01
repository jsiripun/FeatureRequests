DROP TABLE IF EXISTS features;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS product_area;

CREATE TABLE features (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  description TEXT NOT NULL
  client_id INTEGER NOT NULL,
  client_priority INTEGER NOT NULL,
  target_date DATE,
  product_area_id INTEGER NOT NULL,
  FOREIGN KEY (client_id) REFERENCES clients (id),
  FOREIGN KEY (product_area_id) REFERENCES product_area (id)
);

CREATE TABLE clients (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

CREATE TABLE product_area (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);
