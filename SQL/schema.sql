CREATE TABLE faq (
    id SERIAL PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    category VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_faq_category ON faq(category);

CREATE TABLE logs (
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(50),
    message TEXT NOT NULL,
    bot_response TEXT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_logs_user ON logs(user_id);

CREATE TABLE notifications (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO faq (question, answer, category)
VALUES
('Kus asub kabinet 203?', 'Kabinet 203 asub teisel korrusel paremal tiival.', 'ruumid'),
('Kuidas taastada parool?', 'Parooli saab taastada kooli iseteeninduses.', 'IT');
