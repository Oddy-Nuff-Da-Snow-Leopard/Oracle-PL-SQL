LOAD DATA
INFILE 'D:\3 ����\1-�� ���\�����\������������\L18\data.txt'
DISCARDFILE 'D:\3 ����\1-�� ���\�����\������������\L18\data.dis'
INTO TABLE lab18
FIELDS TERMINATED BY ","
(
integervalue "round(:integervalue, 2)",
charvalue "upper(:charvalue)",
datevalue date "YYYY-MM-DD"
)

