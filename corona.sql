use new_schema2;
show tables;

# Find the number of corona patients who faced shortness of breath.

select * from corona;

select count(Shortness_of_breath) as num_shotness_positive from corona
where Shortness_of_breath='True' and corona='Positive';

-- The number of corona patients who faced shortness of breath is 796


# Find the number of negative corona patients who have fever and sore_throat. 

select * from corona;
select count(Corona) as total_num_corona_patients from corona
where Corona='negative' and Fever='true' and Sore_throat='true';
 
 -- The number of negative corona patients who have fever and sore_throat is 98


# Group the data by month and rank the number of positive cases.

select *  from corona;
select Test_date,count(Corona) from corona
where corona='Positive'
group by Test_date
order by count(Corona) desc ;
	 
										

# Find the female negative corona patients who faced cough and headache.

select * from corona;
select count(sex) as female_patients from corona
where sex='female' and Cough_symptoms='true' and Headache='true' and corona='negative';

-- The female negative corona patients who faced cough and headache is 17.

# How many elderly corona patients have faced breathing problems?

select * from corona;
select count(Age_60_above) as total_eld_patient from corona
where Age_60_above='yes' and Shortness_of_breath='true'and Corona='positive';

-- 183 elderly corona patients have faced breathing problems.


# Which three symptoms were more common among COVID positive patients?
select * from corona;
select count(corona) from corona where corona='positive' and Cough_symptoms='true'and Fever='true'and Sore_throat='true' and 
Shortness_of_breath='true' and Headache='true';

select count(corona) from corona where corona='positive' and Cough_symptoms='true';
-- total num=3094
select count(corona) from corona where corona='positive' and Fever='true';
-- total fever=2971
select count(corona) from corona where corona='positive' and Sore_throat='true';
-- total sore throat 945
select count(corona) from corona where corona='positive' and Shortness_of_breath='true';
-- shortness=796
select count(corona) from corona where corona='positive' and Headache='true';
-- head=1419
# conclusion=Three symptoms were more common among COVID positive patients are Cough_symptoms, Fever and Headache.


# Which symptom was less common among COVID negative people?

select * from corona;
select count(corona) from corona where corona='negative' and Cough_symptoms='true';
-- total num=6712
select count(corona) from corona where corona='negative' and Fever='true';
-- total fever=3054
select count(corona) from corona where corona='negative' and Sore_throat='true';
-- total sore throat 296
select count(corona) from corona where corona='negative' and Shortness_of_breath='true';
-- shortness=341
select count(corona) from corona where corona='negative' and Headache='true';
-- head=103
-- Headache symptom was less common among COVID negative people.

# What are the most common symptoms among COVID positive males whose known contact was abroad? 


select * from corona;
select count(corona) as total_positive,Cough_symptoms from corona
where corona='positive' and sex='male' and Known_contact='Abroad' and Cough_symptoms='true';
-- Cough_symptoms=337

select count(corona) as total_positive,Fever from corona
where corona='positive' and sex='male' and Known_contact='Abroad' and Fever='true';
-- Fever=285

select count(corona) as total_positive,Sore_throat from corona
where corona='positive' and sex='male' and Known_contact='Abroad' and Sore_throat='true';
-- Sore_throat=75

select count(corona) as total_positive,Shortness_of_breath from corona
where corona='positive' and sex='male' and Known_contact='Abroad' and Shortness_of_breath='true';
-- Shortness_of_breath=75

select count(corona) as total_positive,Headache from corona
where corona='positive' and sex='male' and Known_contact='Abroad' and Headache='true';
-- Headache=112

-- conclusion:-The most common symptoms among COVID positive males whose known contact was abroad are Cough_symptoms,Fever,Headache and Shortness_of_breath

