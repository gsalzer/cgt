-- First, check that 2 positive and 3 negative assessments per discrepancy are enough
-- See 10_analysis.sql, section 'Maximal number of assessments involved in discrepancies' for a query accomplishing this

DROP TABLE IF EXISTS disagreement_overview;
create table disagreement_overview as (
with d as (
    select
        swc,
        count(distinct dataset) datasets,
        count(property_holds) filter (where property_holds) as "yes",
        count(property_holds) filter (where not property_holds) as "no",
        array_agg((dataset||'/'||id) order by dataset) filter (where property_holds) positive,
        array_agg((dataset||'/'||id) order by dataset) filter (where not property_holds) negative
    from disagreement
    group by swc,
    case when swc in (102,103) then id_as
         when swc in (100, 108, 109, 111, 118, 119, 125, 129, 130, 136) then id_as2
         else id_asb2
    end
)
select swc,
    positive[1] p1,
    positive[2] p2,
    negative[1] n1,
    negative[2] n2,
    negative[3] n3
from d
order by 1,2,3,4,5,6);

\copy disagreement_overview to 07_disagreement_overview.csv with csv header delimiter ';';
