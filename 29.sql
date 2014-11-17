SELECT point, date, sum(inc) as income, sum(out) as outcome 
FROM (SELECT point, date, inc, out = null FROM Income_o
      UNION 
      SELECT point, date, inc=null, out FROM outcome_o) dt 
GROUP BY point, date

