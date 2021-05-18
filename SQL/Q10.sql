-- Find the names of all reviewers who rated Gone with the Wind. 
SELECT DISTINCT m.title, r.name, RA.mid
from Movies m
JOIN Reviewers r
JOIN Ratings RA
on m.id = RA.mid
where m.title = 'Gone with the Wind';
