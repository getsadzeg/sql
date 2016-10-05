CREATE TABLE "USER"(
   id INT PRIMARY KEY NOT NULL,
   username VARCHAR(30) UNIQUE NOT NULL,
   e_mail VARCHAR UNIQUE NOT NULL
   );

   INSERT INTO "USER" (id, username, e_mail) VALUES (1, 'guri', 'getsadzeguram@gmail.com');

   SELECT id, username, e_mail FROM "USER" WHERE id=1;