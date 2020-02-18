CREATE TABLE AME_GROUPS(
    id int PRIMARY KEY,
    name varchar(20) NOT NULL
);


INSERT INTO AME_GROUPS VALUES(1, 'ISIT 3-1');
INSERT INTO AME_GROUPS VALUES(2, 'POIT 3-2');
INSERT INTO AME_GROUPS VALUES(3, 'ISIT 3-3');

COMMIT;
SELECT * FROM AME_GROUPS;


UPDATE AME_GROUPS
    SET name = 'ISIT 3-2' WHERE id = 2;
    
UPDATE AME_GROUPS
    SET name = 'ISIT 3-3' WHERE id = 3;
    
COMMIT;
SELECT * FROM AME_GROUPS;


SELECT name FROM AME_GROUPS WHERE id = 2;

SELECT SUM(id) FROM AME_GROUPS;


DELETE FROM AME_GROUPS WHERE id = 3;

COMMIT;
SELECT * FROM AME_GROUPS;


CREATE TABLE AME_STUDENTS(
id int PRIMARY KEY,
name varchar(20),
surname varchar(25),
groupId int,
CONSTRAINT AME_STUDENTS_groupId_fk FOREIGN KEY(groupId) REFERENCES AME_GROUPS(id)
);

INSERT INTO AME_STUDENTS VALUES(1, 'Maksim', 'Alekseev', 2);
INSERT INTO AME_STUDENTS VALUES(2, 'Roman', 'Bovkynovich', 2);
INSERT INTO AME_STUDENTS VALUES(3, 'Alexey', 'Tsyabyk', 3);
INSERT INTO AME_STUDENTS VALUES(4, 'Dmitry', 'Yanyk', 3);

SELECT * FROM AME_STUDENTS;

COMMIT;


SELECT * FROM AME_GROUPS G INNER JOIN AME_STUDENTS S
                            ON G.id = S.groupId;
                        
SELECT * FROM AME_GROUPS G LEFT OUTER JOIN AME_STUDENTS S
                            ON G.id = S.groupId;

SELECT * FROM AME_GROUPS G RIGHT OUTER JOIN AME_STUDENTS S
                            ON G.id = S.groupId;
                            
                            
                            
SELECT * FROM AME_GROUPS G LEFT OUTER JOIN AME_STUDENTS S
                            ON G.id = S.groupId
                            UNION ALL
SELECT * FROM AME_GROUPS G RIGHT OUTER JOIN AME_STUDENTS S
                            ON G.id = S.groupId;
                            
                            
DROP TABLE AME_GROUPS;
DROP TABLE AME_STUDENTS;





            
