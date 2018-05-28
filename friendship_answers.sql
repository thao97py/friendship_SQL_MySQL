select * from users;
select users.first_name, users.last_name , users2.first_name as friend_first_name, users2.last_name as friend_last_name
from users
join friendships on users.id = friendships.users_id
join users as users2 on friendships.friend_id= users2.id
order by users2.last_name;