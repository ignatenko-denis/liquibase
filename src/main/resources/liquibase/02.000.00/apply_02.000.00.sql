CREATE TABLE IF NOT EXISTS test
(
    id                BIGSERIAL PRIMARY KEY       NOT NULL,
    process           UUID                        NOT NULL,
    client_id         VARCHAR(40)                 NOT NULL
);
