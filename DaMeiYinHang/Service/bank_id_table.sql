CREATE TABLE IF NOT EXISTS "bank_id_table" (
"local_id" Integer PRIMARY KEY AUTOINCREMENT,
"user_id" VARCHAR(36) NOT NULL,
"add_time" DATETIME NOT NULL,
"bank_id" VARCHAR(256) NOT NULL,
"bank_name" VARCHAR(256) NOT NULL,
"limit_amount" INTEGER NOT NULL,
"balance" INTEGER NOT NULL,
"note" VARCHAR(256)
);
