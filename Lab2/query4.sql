SELECT ФАМИЛИЯ, COUNT(ФАМИЛИЯ) FROM Н_ЛЮДИ
    LEFT JOIN Н_УЧЕНИКИ ON Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
    INNER JOIN Н_ГРУППЫ_ПЛАНОВ ON Н_УЧЕНИКИ.ГРУППА = Н_ГРУППЫ_ПЛАНОВ.ГРУППА
    INNER JOIN Н_ПЛАНЫ ON Н_ГРУППЫ_ПЛАНОВ.ПЛАН_ИД = Н_ПЛАНЫ.ПЛАН_ИД
    LEFT JOIN Н_ОТДЕЛЫ ON Н_ПЛАНЫ.ОТД_ИД = Н_ОТДЕЛЫ.ОТД_ИД
    WHERE Н_ОТДЕЛЫ.КОРОТКОЕ_ИМЯ LIKE 'ВТ'
    GROUP BY ФАМИЛИЯ
    HAVING COUNT(ФАМИЛИЯ) > 10
    ORDER BY COUNT(ФАМИЛИЯ);