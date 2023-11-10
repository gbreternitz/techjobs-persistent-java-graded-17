--Part 1
-- columns in job table: id (int); employer (varchar(255)); name (varchar(255)); skills (varchar(255))

--Part 2

SELECT name
FROM techjobs.employer
WHERE location = "St. Louis City";

--Part 3
DROP TABLE job;

--Part 4

--SELECT DISTINCT s.name FROM job_skills js
--inner join skill s on js.skills_id = s.id
--order by s.name asc;

SELECT * FROM skill
inner join job_skills on skill.id = job_skills.skills_id
where job_skills.jobs_id IS NOT NULL
ORDER BY name asc;