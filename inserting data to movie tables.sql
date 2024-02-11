insert into customers(
customer_id, 
first_name,
last_name
)values(
1,
'Bob',
'Peterson'
);


insert into movies(
movie_id,
movie_name,
movie_rating 
)values(
1,
'the lion king',
'G'
);

insert into concessions(
concession_id,
concession_name,
concession_cost,
customer_id 
)values(
1,
'snickers',
1.99,
1
);

insert into tickets(
ticket_id,
total_cost,
customer_id,
movie_id 
)values(
2,
2.99,
1,
1
)




