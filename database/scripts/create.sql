CREATE TABLE Plane_model (
    id int PRIMARY KEY,
    producer_name varchar(255),
    model_name varchar(255),
    capacity int,
    weight int
);

CREATE TABLE Plane (
    id int PRIMARY KEY,
    id_model int,
    serial_number varchar(255),
    FOREIGN KEY (id_model) REFERENCES Plane_model (id)
);

CREATE TABLE Airport (
    id int PRIMARY KEY,
    name varchar(255),
    city varchar(255),
    country varchar(255),
    IATA_code varchar(3)
);

CREATE TABLE Flight (
    id int PRIMARY KEY,
    id_plane int,
    id_airport_departure int,
    id_airport_arrival int,
    departure_time timestamp,
    arrival_time timestamp,
    FOREIGN KEY (id_plane) REFERENCES Plane (id),
    FOREIGN KEY (id_airport_departure) REFERENCES Airport (id),
    FOREIGN KEY (id_airport_arrival) REFERENCES Airport (id)
);

CREATE TABLE Gate (
    id int PRIMARY KEY,
    id_airport int,
    name varchar(255),
    FOREIGN KEY (id_airport) REFERENCES Airport (id)
);
