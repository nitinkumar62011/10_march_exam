QUestion 1.
What will be the result of the query below?

SELECT * FROM runners WHERE id NOT IN (SELECT winner_id FROM races)

Explain your answer and also provide an alternative version of this query that will avoid the issue that it exposes.
Answer:
  it will select the all the runner who do not have winner ID .this quary might be create problem when we have large races table because 
  it will check every time in sub quary from a races table.
  solution  : we can use here left join
   quary : 
       SELECT * FROM runners r
        LEFT JOIN races ra ON r.id = ra.winner_id
         WHERE ra.winner_id IS NULL;


question 2 . Write a query to fetch values in table test_a that are and not in test_b without using the NOT keyword.


create table test_a(id numeric);
insert into test_a(id) values(10),(20),(30),(40),(50);
create table test_b(id numeric);
insert into test_b(id) values(10),(30),(50);

SELECT * FROM test_a a
LEFT JOIN test_b b ON a.id = b.id
WHERE b.id IS NULL;