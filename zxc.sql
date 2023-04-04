Create table users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name TEXT,
        last_name TEXT,
        tg_id INTEGER,
        phone_number TEXT
);

CREATE TABLE users_location (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    users_id INTEGER,
    lat TEXT,
    lon TEXT,
    on_date DATETIME,

    CONSTRAINT fk_users
            FOREIGN KEY (users_id)
            REFERENCES users (id)
);