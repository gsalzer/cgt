\echo ANALYSIS OF IGNORES
\echo ===================
\echo
\echo Ignored assessments by dataset
\echo ------------------------------

select dataset, count ((id, property)) from ignore group by 1 order by 1; 

\echo
\echo Ignored assessments by reason
\echo -----------------------------

with row_order(r,pos) as (VALUES
 ('invalid contract reference', 10),
 ('property status is na', 20),
 ('contradiction for id', 30),
 ('conflict for address', 40),
 ('conflict for source', 50),
 ('conflict for bytecode', 60),
 ('conflict for runtime code', 65),
 ('duplicate own id', 70),
 ('duplicate address', 80),
 ('duplicate source', 90),
 ('duplicate bytecode', 100),
 ('duplicate runtime code', 110)
)
select reason, count(*)
from ignore bi left join row_order ro on bi.reason = ro.r
group by bi.reason,ro.pos
order by ro.pos;

\echo
\echo Ignored assessments by reason and dataset
\echo -----------------------------------------

with row_order(r,pos) as (VALUES
 ('invalid contract reference', 10),
 ('property status is na', 20),
 ('contradiction for id', 30),
 ('conflict for address', 40),
 ('conflict for source', 50),
 ('conflict for bytecode', 60),
 ('conflict for runtime code', 65),
 ('duplicate own id', 70),
 ('duplicate address', 80),
 ('duplicate source', 90),
 ('duplicate bytecode', 100),
 ('duplicate runtime code', 110)
)
select
    reason, 
    count(distinct (id,property)) filter (where dataset='CodeSmells') "CodeSmells",
    count(distinct (id,property)) filter (where dataset='ContractFuzzer') "ContractFuzzer",
    count(distinct (id,property)) filter (where dataset='Doublade') "Doublade",
    count(distinct (id,property)) filter (where dataset='eThor') "eThor",
    count(distinct (id,property)) filter (where dataset='EthRacer') "EthRacer",
    count(distinct (id,property)) filter (where dataset='EverEvolvingG') "EverEvolvingG",
    count(distinct (id,property)) filter (where dataset='JiuZhou') "JiuZhou",
    count(distinct (id,property)) filter (where dataset='NotSoSmartC') "NotSoSmartC",
    count(distinct (id,property)) filter (where dataset='NPChecker') "NPChecker",
    count(distinct (id,property)) filter (where dataset='SBcurated') "SBcurated",
    count(distinct (id,property)) filter (where dataset='SolidiFI') "SolidiFI",
    count(distinct (id,property)) filter (where dataset='SWCregistry') "SWCregistry",
    count(distinct (id,property)) filter (where dataset='Zeus') "Zeus"
from ignore bi left join row_order ro on bi.reason=ro.r
group by bi.reason,ro.pos
order by ro.pos;

\echo
\echo Retained assessments by dataset
\echo -------------------------------

select dataset, count ((id, property)) from cleaned group by 1 order by 1;

\echo
\echo
\echo ANALYSIS OF OVERLAPS
\echo ====================
\echo
 
with overlap as (
    select distinct
        this.dataset, this.id, this.property,
        array_agg(distinct other.dataset order by other.dataset) datasets
    from
        cleaned this natural join mapping m,
        cleaned other natural join mapping n
    where
        m.swc=n.swc and
        ( this.id_as = other.id_as
          or (this.id_as2 = other.id_as2 and m.swc not in (102,103))
          or (this.id_asb2 = other.id_asb2 and m.swc in (101, 104,
              105, 106, 107, 110, 112, 113, 114, 115, 116, 117, 120,
              123, 124, 127, 128, 131, 132, 133, 134, 135, 995,
              996, 997, 999))
          or (this.id_asbr2 = other.id_asbr2 and m.swc in (107))
        )
    group by this.dataset, this.property, this.id
),
c(pos,dataset) as (
    VALUES
        (1,'CodeSmells'),
        (2,'ContractFuzzer'),
        (3,'Doublade'),
        (4,'eThor'),
        (5,'EthRacer'),
        (6,'EverEvolvingG'),
        (9,'JiuZhou'),
        (10,'NotSoSmartC'),
        (7,'NPChecker'),
        (11,'SBcurated'),
        (12,'SolidiFI'),
        (13,'SWCregistry'),
        (8,'Zeus'))
select
   dataset,
   count(distinct (id,property)) filter (where array_length(datasets,1)=1) singles,
   count(distinct (id,property)) filter (where array_length(datasets,1)>1) overlapping,
   count(distinct (id,property)) total,
   count(distinct (id,property)) filter (where 'CodeSmells'=any(datasets)) "CodeSmells",
   count(distinct (id,property)) filter (where 'ContractFuzzer'=any(datasets)) "ContractFuzzer",
   count(distinct (id,property)) filter (where 'Doublade'=any(datasets)) "Doublade",
   count(distinct (id,property)) filter (where 'eThor'=any(datasets)) "eThor",
   count(distinct (id,property)) filter (where 'EthRacer'=any(datasets)) "EthRacer",
   count(distinct (id,property)) filter (where 'EverEvolvingG'=any(datasets)) "EverEvolvingG",
   count(distinct (id,property)) filter (where 'NPChecker'=any(datasets)) "NPChecker",
   count(distinct (id,property)) filter (where 'Zeus'=any(datasets)) "Zeus",
   count(distinct (id,property)) filter (where 'JiuZhou'=any(datasets)) "JiuZhou",
   count(distinct (id,property)) filter (where 'NotSoSmartC'=any(datasets)) "NotSoSmartC",
   count(distinct (id,property)) filter (where 'SBcurated'=any(datasets)) "SBcurated",
   count(distinct (id,property)) filter (where 'SolidiFI'=any(datasets)) "SolidiFI",
   count(distinct (id,property)) filter (where 'SWCregistry'=any(datasets)) "SWCregistry"
from overlap natural join c
group by dataset,pos order by pos;

\echo
\echo
\echo ANALYSIS OF DISCREPANCIES
\echo =========================
\echo

\echo Maximal number of assessments involved in discrepancies
\echo -------------------------------------------------------

with d as (
select
    swc,
    count(property_holds) filter (where property_holds) as "yes",
    count(property_holds) filter (where not property_holds) as "no"
from disagreement
group by swc,
    case when swc in (102,103) then id_as
         when swc in (100, 108, 109, 111, 118, 119, 125, 129, 130, 136) then id_as2
         else id_asb2
    end
)
select swc,yes,no,count(*) from d group by 1,2,3 order by 1,2,3;

-- Check that yes <= 2 and no <= 3
-- otherwise the disagreement analysis in 07_disagreement_analysis.sql fails


\echo
\echo Discrepancies per dataset
\echo -------------------------

select
    dataset,
    count(distinct (id, property)),
    array_agg(distinct swc order by swc) swc
from disagreement d group by 1 order by 1;

-- SWC classes involved in discrepancies (should be 104,107,113,114,120,997)
-- select array_agg(distinct swc order by swc) swc from disagreement;

\echo
\echo Discrepancies with errors per dataset and SWC class
\echo ---------------------------------------------------
with
d as (select dataset,swc,count(*) from disagreement group by 1,2),
e as (select dataset,swc,count(*) from disagreement_error group by 1,2)
select d.dataset
, sum(e.count) totalerr
, sum(d.count) total
, sum(e.count) filter (where e.swc=104) "104err"
, sum(d.count) filter (where d.swc=104) "104"
, sum(e.count) filter (where e.swc=107) "107err"
, sum(d.count) filter (where d.swc=107) "107"
, sum(e.count) filter (where e.swc=113) "113err"
, sum(d.count) filter (where d.swc=113) "113"
, sum(e.count) filter (where e.swc=114) "114err"
, sum(d.count) filter (where d.swc=114) "114"
, sum(e.count) filter (where e.swc=120) "120err"
, sum(d.count) filter (where d.swc=120) "120"
, sum(e.count) filter (where e.swc=997) "997err"
, sum(d.count) filter (where d.swc=997) "997"
from d left join e on d.dataset=e.dataset and d.swc=e.swc
group by d.dataset order by 1;

\echo
\echo Discrepancies with errors per SWC class (total)
\echo -----------------------------------------------
with
d as (select dataset,swc,count(*) from disagreement group by 1,2),
e as (select dataset,swc,count(*) from disagreement_error group by 1,2),
f as (select d.dataset
, sum(e.count) totalerr
, sum(d.count) total
, sum(e.count) filter (where e.swc=104) "104err"
, sum(d.count) filter (where d.swc=104) "104"
, sum(e.count) filter (where e.swc=107) "107err"
, sum(d.count) filter (where d.swc=107) "107"
, sum(e.count) filter (where e.swc=113) "113err"
, sum(d.count) filter (where d.swc=113) "113"
, sum(e.count) filter (where e.swc=114) "114err"
, sum(d.count) filter (where d.swc=114) "114"
, sum(e.count) filter (where e.swc=120) "120err"
, sum(d.count) filter (where d.swc=120) "120"
, sum(e.count) filter (where e.swc=997) "997err"
, sum(d.count) filter (where d.swc=997) "997"
from d left join e on d.dataset=e.dataset and d.swc=e.swc
group by d.dataset)
select  'total' "dataset"
, sum("totalerr") "totalerr"
, sum("total") "total"
, sum("104err") "104err"
, sum("104") "104"
, sum("107err") "107err"
, sum("107") "107"
, sum("113err") "113err"
, sum("113") "113"
, sum("114err") "114err"
, sum("114") "114"
, sum("120err") "120err"
, sum("120") "120"
, sum("997err") "997err"
, sum("997") "997"
from f group by 1;
