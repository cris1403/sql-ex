/* Find out makers who produce only the models of the same type,    */
/* and the number of those models exceeds 1                         */

select maker, type
from Product
where maker in (select maker
                from Product
                group by maker
                having count(distinct type) = 1)
group by maker, type
having count(*) > 1

