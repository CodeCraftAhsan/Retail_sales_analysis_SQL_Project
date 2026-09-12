use tanvir_academy;
select * from hrm_data;

select name, joining_date,
STR_TO_DATE(joining_date, '%d-%m-%y') as date_format
from hrm_data;
----repalce
select name, replace(email_address,'@tanviracademy.com', '@ahasanacademy') as email, length(email_address) as len_email from hrm_data;

select name, branch, 
extract(year from str_to_date(joining_date,'%d-%m-%y')) as new_date from hrm_data;

select name, branch, 
extract(month from str_to_date(joining_date,'%d-%m-%y')) as new_date from hrm_data;

alter table hrm_data
drop new_join_date;

alter table hrm_data
add column new_date date;

update hrm_data
set new_date = str_to_date(joining_date,'%d-%m-%y');
---date_format
select name, date_format(new_date,'%M') as day from  hrm_data;
select name, date_format(new_date,'%b') as day from  hrm_data;
select name, date_format(new_date,'%Y') as day from  hrm_data;
select name, date_format(new_date,'%W') as day from  hrm_data;
select name, date_format(new_date,'%a') as day from  hrm_data;

alter table hrm_data
drop joining_date;