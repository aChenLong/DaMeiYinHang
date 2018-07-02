CREATE TABLE IF NOT EXISTS "account_book_table" (
"local_id" Integer PRIMARY KEY AUTOINCREMENT,
"user_id" VARCHAR(36) NOT NULL,
"add_time" DATETIME NOT NULL ,
"amount" VARCHAR(256) NOT NULL,
"from_account" VARCHAR(36) references bank_id_table(local_id),
"to_account" VARCHAR(36) references bank_id_table(local_id),
"note" VARCHAR(256));

