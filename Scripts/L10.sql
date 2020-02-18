DROP TABLE FACULTY;
CREATE TABLE FACULTY (
    FACULTY CHAR(10) NOT NULL,
    FACULTY_NAME VARCHAR2(100),
    CONSTRAINT PK_FACULTY PRIMARY KEY(FACULTY)
);

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('ИДиП', 'Издателькое дело и полиграфия');

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('ХТиТ', 'Химическая технология и техника');

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('ЛХФ', 'Лесохозяйственный факультет');

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('ИЭФ', 'Инженерно-экономический факультет');

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('ТТЛП', 'Технология и техника лесной промышленности');

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('ТОВ', 'Технология органических веществ');
--------------------------------------------------------------------------------

DROP TABLE PULPIT;
CREATE TABLE PULPIT (
    PULPIT CHAR(20) NOT NULL,
    PULPIT_NAME VARCHAR2(200),
    FACULTY CHAR(10) NOT NULL,
    CONSTRAINT PK_PULPIT PRIMARY KEY(PULPIT),
    CONSTRAINT FK_PULPIT_FACULTY FOREIGN KEY(FACULTY) REFERENCES FACULTY(FACULTY)
);

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ИСиТ', 'Иформационный систем и технологий', 'ИДиП');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ПОиСОИ', 'Полиграфического оборудования и систем обработки информации', 'ИДиП');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ЛВ', 'Лесоводства', 'ЛХФ');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ОВ', 'Охотоведения', 'ЛХФ');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ЛУ', 'Лесоустройства', 'ЛХФ');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ЛЗиДВ', 'Лесозащиты и древесиноведения', 'ЛХФ');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ЛПиСПС', 'Ландшафтного проектирования и садово-паркового строительства', 'ЛХФ');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ТЛ', 'Транспорта леса', 'ТТЛП');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ЛМиЛЗ', 'Лесных машин и технологии лесозаготовок', 'ТТЛП');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ОХ', 'Органической химии', 'ТОВ');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ТНХСиППМ', 'Технологии нефтехимического синтеза и переработки полимерных материалов', 'ТОВ');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ТНВиОХТ', 'Технологии неорганических веществ и общей химической технологии', 'ХТиТ');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ХТЭПиМЭЕ', 'Химии, технологии электрохимических производств и материалов электронной техники', 'ХТиТ');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('ЭТиМ', 'Экономической теории и маркетинга', 'ИЭФ');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('МиЭП', 'Менеджмента и экономики природопользования', 'ИЭФ');
--------------------------------------------------------------------------------

DROP TABLE TEACHER;
CREATE TABLE TEACHER ( 
    TEACHER CHAR(20) NOT NULL,
    TEACHER_NAME VARCHAR2(100),
    PULPIT CHAR(20) NOT NULL,
    CONSTRAINT PK_TEACHER PRIMARY KEY(TEACHER),
    CONSTRAINT FK_TEACHER_PULPIT FOREIGN KEY(PULPIT) REFERENCES PULPIT(PULPIT)
);

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('СМЛВ', 'Смелов Владимир Владиславович', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('АКНВЧ', 'Акунович Станислав Иванович', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('КЛСНВ', 'Колесников Леонид Валерьевич', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ГРМН', 'Герман Олег Витольдович', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ЛЩНК', 'Лащенко Анатолий Пвалович', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('БРКВЧ', 'Бракович Андрей Игорьевич', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ДДК', 'Дедко Александр Аркадьевич', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('КБЛ', 'Кабайло Александр Серафимович', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('УРБ', 'Урбанович Павел Павлович', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('РМНК', 'Романенко Дмитрий Михайлович', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ПСТВЛВ', 'Пустовалова Наталия Николаевна', 'ИСиТ' );

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('?', 'Неизвестный', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ГРН', 'Гурин Николай Иванович', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ЖЛК', 'Жиляк Надежда Александровна', 'ИСиТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('БРТШВЧ', 'Барташевич Святослав Александрович', 'ПОиСОИ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ЮДНКВ', 'Юденков Виктор Степанович', 'ПОиСОИ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('БРНВСК', 'Барановский Станислав Иванович', 'ЭТиМ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('НВРВ', 'Неверов Александр Васильевич', 'МиЭП');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('РВКЧ', 'Ровкач Андрей Иванович', 'ОВ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ДМДК', 'Демидко Марина Николаевна', 'ЛПиСПС');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('МШКВСК', 'Машковский Владимир Петрович', 'ЛУ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ЛБХ', 'Лабоха Константин Валентинович', 'ЛВ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ЗВГЦВ', 'Звягинцев Вячеслав Борисович', 'ЛЗиДВ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('БЗБРДВ', 'Безбородов Владимир Степанович', 'ОХ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ПРКПЧК', 'Прокопчук Николай Романович', 'ТНХСиППМ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('НСКВЦ', 'Насковец Михаил Трофимович', 'ТЛ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('МХВ', 'Мохов Сергей Петрович', 'ЛМиЛЗ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ЕЩНК', 'Ещенко Людмила Семеновна', 'ТНВиОХТ');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('ЖРСК', 'Жарский Иван Михайлович', 'ХТЭПиМЭЕ');
--------------------------------------------------------------------------------

DROP TABLE SUBJECT;
CREATE TABLE SUBJECT (
    SUBJECT CHAR(20) NOT NULL,
    SUBJECT_NAME VARCHAR2(100) NOT NULL,
    PULPIT CHAR(20) NOT NULL,
    CONSTRAINT PK_SUBJECT PRIMARY KEY(SUBJECT),
    CONSTRAINT FK_SUBJECT_PULPIT FOREIGN KEY(PULPIT) REFERENCES PULPIT(PULPIT)
);

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('СУБД', 'Системы управления базами данных', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('БД', 'Базы данных', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ИНФ', 'Информацтонные технологии', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ОАиП', 'Основы алгоритмизации и программирования', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ПЗ', 'Представление знаний в компьютерных системах', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ПСП', 'Пограммирование сетевых приложений', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('МСОИ', 'Моделирование систем обработки информации', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ПИС', 'Проектирование информационных систем', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('КГ', 'Компьютерная геометрия ', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ПМАПЛ', 'Полиграфические машины, автоматы и поточные линии', 'ПОиСОИ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('КМС', 'Компьютерные мультимедийные системы', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ОПП', 'Организация полиграфического производства', 'ПОиСОИ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ДМ', 'Дискретная матеатика', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('МП', 'Математисеское программирование', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ЛЭВМ', 'Логические основы ЭВМ', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ООП', 'Объектно-ориентированное программирование', 'ИСиТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ЭП', 'Экономика природопользования', 'МиЭП');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ЭТ', 'Экономическая теория', 'ЭТиМ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('БЛЗиПсOO', 'Биология лесных зверей и птиц с осн. охотов.', 'ОВ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ОСПиЛПХ', 'Основы садовопаркового и лесопаркового хозяйства', 'ЛПиСПС');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ИГ', 'Инженерная геодезия', 'ЛУ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ЛВ', 'Лесоводство', 'ЛЗиДВ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ОХ', 'Органическая химия', 'ОХ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ТРИ', 'Технология резиновых изделий', 'ТНХСиППМ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ВТЛ', 'Водный транспорт леса', 'ТЛ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ТиОЛ', 'Технология и оборудование лесозаготовок', 'ЛМиЛЗ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ТОПИ', 'Технология обогащения полезных ископаемых ', 'ТНВиОХТ');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('ПЭХ', 'Прикладная электрохимия', 'ХТЭПиМЭЕ');
--------------------------------------------------------------------------------

DROP TABLE AUDITORIUM_TYPE;
CREATE TABLE AUDITORIUM_TYPE (
    AUDITORIUM_TYPE char(10),
    AUDITORIUM_TYPENAME varchar2(60) NOT NULL,
    CONSTRAINT PK_AUDITORIUM_TYPE PRIMARY KEY(AUDITORIUM_TYPE)
);

INSERT INTO AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
VALUES ('ЛК', 'Лекционная');

INSERT INTO AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
VALUES ('ЛБ-К', 'Компьютерный класс');

INSERT INTO AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
VALUES ('ЛК-К', 'Лекционная с уст. компьютерами');

INSERT INTO AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
VALUES ('ЛБ-X', 'Химическая лаборатория');

INSERT INTO AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
VALUES ('ЛБ-СК', 'Спец. компьютерный класс');
--------------------------------------------------------------------------------

DROP TABLE AUDITORIUM;
    CREATE TABLE AUDITORIUM (
    AUDITORIUM char(10),
    AUDITORIUM_NAME varchar2(200),
    AUDITORIUM_CAPACITY number(4) CHECK (AUDITORIUM_CAPACITY > 10),
    AUDITORIUM_TYPE char(10) NOT NULL,
    CONSTRAINT PK_AUDITORIUM PRIMARY KEY(AUDITORIUM),
    CONSTRAINT FK_AUDITORIUM_AUDITORIUM_TYPE FOREIGN KEY(AUDITORIUM_TYPE) REFERENCES AUDITORIUM_TYPE(AUDITORIUM_TYPE)
);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('206-1', '206-1', 'ЛБ-К', 15);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('301-1', '301-1', 'ЛБ-К', 15);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('236-1', '236-1', 'ЛК', 60);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('313-1', '313-1', 'ЛК', 60);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('324-1', '324-1', 'ЛК', 50);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('413-1', '413-1', 'ЛБ-К', 15);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('423-1', '423-1', 'ЛБ-К', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('408-2', '408-2', 'ЛК', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('103-4', '103-4', 'ЛК', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('105-4', '105-4', 'ЛК', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('107-4', '107-4', 'ЛК', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('110-4', '110-4', 'ЛК', 30);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('111-4', '111-4', 'ЛК', 30);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('114-4', '114-4', 'ЛК-К', 90 );

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('132-4', '132-4', 'ЛК', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('02Б-4', '02Б-4', 'ЛК', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('229-4', '229-4', 'ЛК', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('304-4', '304-4', 'ЛБ-К', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('314-4', '314-4', 'ЛК', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('320-4', '320-4', 'ЛК', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('429-4', '429-4', 'ЛК', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('?', '???', 'ЛК', 90);
-----------------------------------------------------------------------------------------------------------------------


--Task01
BEGIN 
    null;
END;

--Task02
BEGIN
    dbms_output.put_line('Hello World!');
END;

--In sqlplus 
--set serveroutput on;

--Task03
DECLARE
a number(1) := 1;
b number(1) := 0;
c number(1);
BEGIN
    dbms_output.put_line('a = ' || a);
    dbms_output.put_line('b = ' || b);
    c := a/b;
    dbms_output.put_line('c = ' || c);
    
    EXCEPTION
        WHEN OTHERS THEN 
            dbms_output.put_line('Error message: ' || sqlerrm);
            dbms_output.put_line('Error code: ' || sqlcode);
END;

DECLARE
a number(1) := 1;
b number(1) := 0;
c number(1);
BEGIN
    dbms_output.put_line('a = ' || a);
    dbms_output.put_line('b = ' || b);
    
    BEGIN
    dbms_output.put_line('INNER BLOCK BEGIN');
        c := a/b;
        EXCEPTION
            WHEN OTHERS THEN
                dbms_output.put_line('Error message: ' || sqlerrm);
                dbms_output.put_line('Error code: ' || sqlcode);
    END;
    dbms_output.put_line('c = ' || c);
END;

--Task05
SHOW PARAMETER PLSQL_WARNINGS;
--ALTER SYSTEM SQT PLSQL_WARNINGS = 'ENABLE:INFORMATIONAL';

--Task06
SELECT KEYWORD FROM v$reserved_words WHERE LENGTH = 1;

--Task07
SELECT KEYWORD FROM v$reserved_words WHERE LENGTH > 2;

--Task08
SELECT * FROM v$parameter WHERE NAME LIKE '%plsql%'
SHOW PARAMETER PLSQL;

--Task09
DECLARE
a number(1) := 9; --Task10
b number(1) := 2; --Task10
c number(5,2) := 228.13; --Task12
d number(5,-1) := 228.17; --Task13
e binary_float := 228.13371488100500; -- Task14
f binary_double := 228.1337148810050013371488100500; -- Task15
g number(6,2) := 22.8e2; --Task16
h boolean := true; --Task17
BEGIN
    dbms_output.put_line('a = ' || a);
    dbms_output.put_line('b = ' || b);
    dbms_output.put_line('c = ' || c);
    dbms_output.put_line('d = ' || d);
    dbms_output.put_line('e = ' || e);
    dbms_output.put_line('f = ' || f);
    dbms_output.put_line('g = ' || g);
    IF h
        THEN dbms_output.put_line('g = true');
        ELSE dbms_output.put_line('g = false');
    END IF;

    dbms_output.put_line('a + b = ' || (a + b)); --Task11
    dbms_output.put_line('a - b = ' || (a - b)); --Task11
    dbms_output.put_line('a * b = ' || (a * b)); --Task11
    dbms_output.put_line('a / b = ' || (a / b)); --Task11
END;

--Task18
DECLARE
a1 constant varchar2(14) := 'huba';
a2 constant varchar2(14 char) := 'buba';

b1 constant char(14) := 'chim';
b2 constant char(7 char) := 'chim';

c constant number(2) := 54;

BEGIN
    dbms_output.put_line('a1 = ' || a1 || ', length(a1) = ' || length(a1));
    dbms_output.put_line('a2 = ' || a2 || ', length(a2) = ' || length(a2));
    dbms_output.put_line('a1 + a2 = ' || a1 || '-' || a2);
    
    dbms_output.put_line('');

    dbms_output.put_line('b1 = ' || b1 || ', length(b1) = ' || length(b1));
    dbms_output.put_line('b2 = ' || b2 || ', length(b2) = ' || length(b2));
    dbms_output.put_line('b1 + b2 = ' || b1 || '-' || b2);
    
    c := 22;
END;


--Task19
DECLARE
teacher SYSTEM.TEACHER.TEACHER%TYPE;
pulpit SYSTEM.PULPIT.PULPIT%TYPE;

BEGIN
    teacher := 'Mamix';
    pulpit := 'IT';
    dbms_output.put_line(teacher);
    dbms_output.put_line(pulpit);
END;

--Task20
DECLARE
teacher SYSTEM.TEACHER%ROWTYPE;

BEGIN
    teacher.teacher := 'Alksv';
    teacher.teacher_name := 'Alekseev Maksim';
    teacher.pulpit := 'ISIT';
    
    dbms_output.put_line(teacher.teacher);
    dbms_output.put_line(teacher.teacher_name);
    dbms_output.put_line(teacher.pulpit);
END;


--Task21
DECLARE
a number(2) := 30;
b number(2) := 0;

BEGIN
    IF a + b > 70 THEN
        dbms_output.put_line('a + b > 70');

    ELSIF a + b < 40 THEN
        dbms_output.put_line('a + b < 40');

    ELSE
        dbms_output.put_line('a + b < 70 AND a + b > 40 ');
END IF;
END;

--Task23
DECLARE
a number(2) := 10;
BEGIN
    CASE
        WHEN a > 10 THEN
            dbms_output.put_line('x > 10');
        
        WHEN a BETWEEN 5 AND 10 THEN
            dbms_output.put_line('a >= 5 AND a <= 10');
        
        ELSE
            dbms_output.put_line('a < 5');
  END CASE;
END; 

--Last tasks
DECLARE 
    i number(2) := 0;
    k number(2) := 0;
BEGIN
    --Task24
    LOOP
        dbms_output.put(i || ' ');
        i := i + 1;
    EXIT WHEN i > 10;
    END LOOP;
    
    dbms_output.put(' ');
    
    --Task25
    FOR j in 1..10 LOOP
        dbms_output.put(j || ' ');
    END LOOP;    
END;
 
DECLARE i int := 10;
BEGIN
    WHILE i > 0 LOOP
        i := i - 1;
        dbms_output.put(i || ' ');
    END LOOP;
END;
 