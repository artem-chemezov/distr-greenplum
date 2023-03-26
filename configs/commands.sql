

select * from mytable;
select count(*) from mytable;
select * from mytable where first_name like 'A%';
select * from mytable t join addresses a on t.zip_code=a.zip_code;


-- Печатает соседей по почтовому индексу
select t.first_name, t.last_name, STRING_AGG(t2.first_name, ', ') from mytable t
left join mytable t2 on t.zip_code=t2.zip_code
group by t.first_name, t.last_name;

-- Добавляет новую колонку
ALTER TABLE mytable
ADD COLUMN salary decimal;

-- переименования колонки
ALTER TABLE mytable 
RENAME COLUMN city TO town;



-- выставляет значения
UPDATE mytable SET salary = floor(random() * 500000 + 1);


-- список средней ща в каждом районе
SELECT zip_code, floor(avg(salary))
FROM mytable
GROUP BY zip_code
ORDER BY avg(salary) desc;

-- показывает ранижированный список по зп людей из одного района
SELECT zip_code, id, first_name, last_name, salary,
       rank() OVER (PARTITION BY zip_code ORDER BY salary DESC)
FROM mytable;

-- суммарная зп района (с оконной функцией)
SELECT zip_code, sum(salary) OVER (ORDER BY salary) FROM mytable;




-- создание таблицы с сжатием

CREATE TABLE comp_table (
  id TEXT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  address TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT
)
WITH ( appendonly=true, compresstype=zlib, orientation=column );

-- проверка что таблица создалась
 \d+ comp_table
