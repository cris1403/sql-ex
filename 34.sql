select s.name
from ships s, classes c
where s.class = c.class
and c.displacement > 35000
and c.type = 'bb'
and s.launched > 1922
