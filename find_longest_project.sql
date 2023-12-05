WITH ProjectDurations AS (
    SELECT
        ID,
        DATEDIFF(MONTH, START_DATE, FINISH_DATE) AS Duration
    FROM
        PROJECT
)

SELECT ID
FROM (
    SELECT
        ID,
        RANK() OVER (ORDER BY Duration DESC) AS DurationRank
    FROM
        ProjectDurations
) RankedDurations
WHERE DurationRank = 1;