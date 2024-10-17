{{ config(materialized = 'table') }} --it can be configured separetly or in the yml

with graduates as (
    select studentid, gender, interaction_id, socialmedia_access, activityid, passed_external_exam 
    from conquistador_db.conquistador_schema.students
    where current_classid = 4
    and
    activityid is not null
)
select count(studentid) as student_passed
from graduates
where passed_external_exam = 'passed'



-- WITH graduates AS (
--     SELECT 
--         studentid, 
--         gender, 
--         interaction_id, 
--         socialmedia_access, 
--         activityid, 
--         passed_external_exam 
--     FROM 
--         conquistador_db.conquistador_schema.students
--     WHERE 
--         current_classid = 4
-- )
-- SELECT 
--     COUNT(studentid) AS num_graduates
-- FROM 
--     graduates
-- WHERE 
--     passed_external_exam = 'passed';
