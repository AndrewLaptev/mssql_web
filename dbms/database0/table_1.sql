USE {database} DROP TABLE IF EXISTS table_1;
USE {database} CREATE TABLE table_1(
   id      INTEGER  NOT NULL PRIMARY KEY 
  ,fio     VARCHAR(20) NOT NULL
  ,n_group INTEGER  NOT NULL
  ,rang    VARCHAR(15) NOT NULL
  ,salary  INTEGER NULL
  ,date_b  DATE NULL
);
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (1,'Иванов И.И',456,'курсант',125,'19950525 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (2,'Петров П.П.',123,'курсант',125,'19950626 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (3,'Борисов Б.Б',123,'командир группы',200,'19950628 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (4,'Антонов А.А.',456,'курсант',125,'19950526 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (5,'Сидоров С.С.',789,'курсант',125,NULL);
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (6,'Дьяков Д.Д.',123,'курсант',125,'19950624 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (7,'Федоров Ф.Ф.',456,'командир отряда',170,'19950528 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (8,'Кулаков К.К.',789,'курсант',150,'19950213 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (9,'Сучков С.С.',456,'курсант',150,'19950503 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (10,'Березкин Б.Б.',123,'командир отряда',170,'19950123 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (11,'Никитин Н.Н.',456,'курсант',150,'19950404 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (12,'Степанов С. С.',789,'командир группы',200,'19950603 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (13,'Расторин Р.Р.',456,'курсант',150,'19950621 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (14,'Жуков Ж.%.',789,'курсант',150,'19951213 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (15,'Тимофеев Т.Т.',123,'курсант',150,NULL);
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (16,'Царицын В.В.',456,'командир группы',NULL,'19951025 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (17,'Навальный Н.Н.',123,'курсант',150,NULL);
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (18,'Щербаков А.Р.',456,'курсант',150,'19951212 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (19,'Ильин И.П.',789,'курсант',NULL,'19950101 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (20,'Яшин _.Я.',123,'курсант',150,'19950202 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (21,'Лукин Л.Л.',789,'командир отряда',170,'19950303 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (22,'Дятлов Д.Д.',456,'курсант',150,'19950505 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (23,'Ефимов Е.Е.',789,'курсант',150,NULL);
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (24,'Титов Т.Т',123,'курсант',125,NULL);
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (25,'Потапов П.П.',456,'курсант',150,'19950606 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (26,'Громов Г.Г.',123,'курсант',150,'19950707 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (27,'Кузмин К.Н',789,'курсант',150,'19950909 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (28,'Юрьев Ю.Ю.',789,'курсант',150,'19950808 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (29,'Артемов А.А.',456,'командир отряда',170,'19951010 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (30,'Денисов Д.Д.',123,'курсант',150,'19951111 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (31,'Кузнецов К.К.',123,'курсант',150,'19951212 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (32,'Максимов М.М.',456,'курсант',150,NULL);
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (33,'Попов П.П.',123,'командир отряда',170,'19951201 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (34,'Воронин Н.В.',456,'курсант',150,NULL);
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (35,'Карпов В.В.',123,'курсант',150,'19950115 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (36,'Беретников В.В.',456,'курсант',150,'19950103 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (37,'Захарченко З.З.',789,'курсант',150,'19950201 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (38,'Шокин В.В.',789,'курсант',150,'19950301 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (39,'Горбов Г.Г.',456,'курсант',150,'19950504 12:00:00 AM');
USE {database} INSERT INTO table_1(id,fio,n_group,rang,salary,date_b) VALUES (40,'Волчков В.В.',456,'курсант',150,'19950604 12:00:00 AM');