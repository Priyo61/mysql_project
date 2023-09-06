use new_schema;
show tables;
select * from cred;


# Group the customers based on their income type and find the average of their annual income.
select Type_Income,avg(Annual_income) as Annual_Income_customer
from cred
group by Type_Income;

# Find the female owners of cars and property.
select * from cred;
select Gender,Car_Owner,Propert_Owner from cred 
where Gender='f' and Car_Owner='y' and Propert_Owner='y';

# Find the male customers who are staying with their families.
select * from cred;
select Gender,Marital_status,Family_Members from cred 
where gender='m' and Marital_status='Married' and Family_Members>=2;



#Please list the top five people having the highest income.

select * from cred;
Select gender,Annual_income from cred
order by Annual_income desc limit 5;


# How many married people are having bad credit?
select * from cred;
select * from cred_l;
select Marital_status,count(label) as total_bad_credit from cred
inner join cred_l on cred.Ind_ID and cred_l.Ind_ID
where Marital_status='married' and label=0
group by Marital_status ;

# What is the highest education level and what is the total count?

select * from cred;	
select 	count(education) as total_num_highest_edu from cred
where education='higher education'	;

# Between married males and females, who is having more bad credit? 
select gender,count(label) as f_total_num_bad_credit,Marital_status  from cred 
inner join cred_l on cred.Ind_ID=cred_l.Ind_ID
where gender='f' and Marital_status='married' and label=0;

# female have 566 bad credit card


select gender,count(label) as m_total_num_bad_credit,Marital_status  from cred 
inner join cred_l on cred.Ind_ID=cred_l.Ind_ID
where gender='m' and Marital_status='married' and label=0;

# male have 368 bad credit which is less than female.

# conl--- By obsevation married female was the bad credit card than married male.