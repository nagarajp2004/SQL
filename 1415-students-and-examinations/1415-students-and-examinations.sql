SELECT
  s1.student_id,
  s1.student_name,
  s2.subject_name,
  COUNT(e1.student_id) AS attended_exams
  from Students s1 
  cross join Subjects s2
  LEFT JOIN Examinations e1 
  on s1.student_id=e1.student_id and s2.subject_name=e1.subject_name 
  group by s1.student_id,s1.student_name,s2.subject_name
  order by s1.student_id,s2.subject_name;
  