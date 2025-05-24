# Calculating Free-to-Paid Conversion Rate with SQL Project

USE db_course_conversions;
SELECT 
    *
FROM
    student_engagement;
SELECT 
    *
FROM
    student_info;
SELECT 
    *
FROM
    student_purchases;

SELECT 
    ROUND(COUNT(a.first_date_purchased) / COUNT(a.first_date_watched) * 100,
            2) AS conversion_rate,
    ROUND(SUM(a.date_diff_reg_watch) / COUNT(a.first_date_watched),
            2) AS av_reg_watch,
    ROUND(SUM(a.date_diff_watch_purch) / COUNT(a.first_date_purchased),
            2) AS av_watch_purch
FROM
    (SELECT 
        si.student_id,
            si.date_registered,
            MIN(se.date_watched) AS first_date_watched,
            MIN(sp.date_purchased) AS first_date_purchased,
            DATEDIFF(MIN(se.date_watched), si.date_registered) AS date_diff_reg_watch,
            DATEDIFF(MIN(sp.date_purchased), MIN(se.date_watched)) AS date_diff_watch_purch
    FROM
        student_engagement se
    JOIN student_info si ON si.student_id = se.student_id
    LEFT JOIN student_purchases sp ON sp.student_id = si.student_id
    GROUP BY si.student_id , si.date_registered
    HAVING first_date_purchased IS NULL
        OR first_date_watched <= first_date_purchased) AS a;   
