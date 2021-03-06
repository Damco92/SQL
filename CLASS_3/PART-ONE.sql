USE [SEDCHome]
GO

SELECT
COUNT(Grade) AS TOTAL
FROM DBO.Grade
GO

SELECT T.FirstName AS TEACHERS_NAME,
COUNT(Grade) AS GRADES_TOAL
FROM DBO.Grade
INNER JOIN [Teacher] T ON T.ID = Grade.TeacherID
GROUP BY T.FirstName
GO

SELECT T.FirstName AS TEACHERS_NAME,
COUNT(Grade) AS GRADES_TOAL
FROM DBO.Grade
INNER JOIN [Teacher] T ON T.ID = Grade.TeacherID
WHERE T.ID < 100
GROUP BY T.FirstName
ORDER BY GRADES_TOAL DESC
GO

SELECT S.FirstName,S.LastName,
MAX(G.Grade) AS MAXIMUM_GRADE,
AVG(G.Grade) AS AVERAGE_GRADE
FROM [Grade] G
INNER JOIN [Student] S ON S.ID = G.StudentID
GROUP BY S.FirstName,S.LastName
ORDER BY AVERAGE_GRADE DESC
GO