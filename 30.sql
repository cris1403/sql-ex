select Temp.point, Temp.date, sum(Temp.out) as expense, sum(Temp.inc) as income
from (select point, date, sum(out) as out, inc = null
      from Outcome
      group by point, date
      union
      select point, date, out = null, sum(inc) as inc
      from Income
      group by point, date) as Temp
group by Temp.point, Temp.date
