WITH ProjectCounts AS (
    SELECT CLIENT_ID, COUNT(*) AS ProjectCount
    FROM PROJECT
    GROUP BY CLIENT_ID
)

SELECT CLIENT_ID
FROM ProjectCounts
WHERE ProjectCount = (SELECT MAX(ProjectCount) FROM ProjectCounts);