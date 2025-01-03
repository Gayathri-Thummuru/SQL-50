SELECT contest_id, ROUND(Count(u.user_id)*100 / (SELECT Count(user_id) FROM Users) ,2) AS percentage 
FROM Users u JOIN Register r ON u.user_id = r.user_id  GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;