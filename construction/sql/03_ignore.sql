DROP TABLE IF EXISTS ignore;
create table ignore (
    dataset TEXT,
    id TEXT,
    property TEXT,
    reason TEXT,
    min_id TEXT,
    PRIMARY KEY (dataset,id,property)
);



------------------------------------------------------
-- critical info missing, assessment underspecified --
------------------------------------------------------

-- invalid contract reference: no address, sol, bytecodes
insert into ignore
select dataset, id, property, 'invalid contract reference'
from unified
where (addr is null or chain is null) and -- no address info
      (fp_sol is null or contractname is null) and -- no source code
      fp_bytecode is null and
      fp_runtime is null;

-- no info on whether property holds
insert into ignore
select dataset, id, property, 'property status is na'
from unified
where property_holds is null on conflict do nothing;



-------------------------------
-- contradicting assessments --
-------------------------------

-- contradictions within own ids (only Zeus has them)
with t as (-- get assessments per Zeus' own id 
    select
        substring(id from 6) zeus_id, property,
        array_agg(distinct id) ids, array_agg(distinct property_holds) status
    from unified where dataset='Zeus' group by 1,2)
insert into ignore
select 'Zeus', id, property, 'contradiction for id'
from t,unnest(ids) id
where array_length(status,1) > 1
on conflict do nothing;

-- conflicting assessments (addr)
with t as (
    select
        id_a, dataset, property,
        array_agg(distinct id) ids, array_agg(distinct property_holds) status
    from unified group by 1,2,3)
insert into ignore
select dataset, id, property, 'conflict for address'
from t, unnest(ids) id
where array_length(status,1) > 1
on conflict do nothing;

-- conflicting assessments (fp_sol with pragma) 
with t as (
    select
        id_as, dataset, property,
        array_agg(distinct id) ids, array_agg(distinct property_holds) status
    from unified group by 1,2,3)
insert into ignore
select dataset, id, property, 'conflict for source'
from t, unnest(ids) id
where array_length(status,1) > 1
on conflict do nothing;

-- conflicting assessments (fp_sol without pragma)
with t as (
    select
        id_as2, dataset, property,
        array_agg(distinct id) ids, array_agg(distinct property_holds) status
    from unified natural join mapping
    where swc not in (102,103) -- 102,103 depend on pragma
    group by 1,2,3)
insert into ignore
select dataset, id, property, 'conflict for source'
from t, unnest(ids) id
where array_length(status,1) > 1
on conflict do nothing;

-- conflicting assessments (fp_bytecode)
with t as (
    select
        id_asb2, dataset, property,
        array_agg(distinct id) ids, array_agg(distinct property_holds) status
    from unified natural join mapping
    -- non-existent: 121, 122, 126, 137-994, 998.
    -- only in source: (100, 102, 103, 108, 109, 111, 118, 119, 125, 129, 130, 136)
    where swc in (101, 104, 105, 106, 107, 110, 112, 113,
    114, 115, 116, 117, 120, 123, 124, 127, 128, 131, 132, 133, 134, 135, 995,
    996, 997, 999) -- properties visible in bytecode, not just in source
    group by 1,2,3)
insert into ignore
select dataset, id, property, 'conflict for bytecode'
from  t, unnest(ids) id
where array_length(status,1) > 1
on conflict do nothing;

-- conflicting assessments (fp_runtime)
with t as (
    select
        id_asbr2, dataset, property,
        array_agg(distinct id) ids, array_agg(distinct property_holds) status
    from unified natural join mapping
    where swc in (107) -- properties must be visible in runtime code
    group by 1,2,3)
insert into ignore
select dataset, id, property, 'conflict for runtime code'
from  t, unnest(ids) id
where array_length(status,1) > 1
on conflict do nothing;

with p(dataset,property) as (VALUES
    ('JiuZhou', 'Unused public functions within a contract should be declared external'),
    ('CodeSmells', 'High Gas Consumption Function Type'),
    ('Zeus', 'Tx_Order_Dep')
),
t as (
    select
        fp_runtime, dataset, property,
	array_agg(distinct id) ids, array_agg(distinct property_holds) status
    from unified natural join p
    where fp_runtime is not null
    group by 1,2,3)
insert into ignore
select dataset, id, property, 'conflict for runtime code'
from  t, unnest(ids) id
where array_length(status,1) > 1
on conflict do nothing;


----------------
-- duplicates --
----------------

-- EthRacer duplicate with own id (=addr)
with t as (
    select
        property, array_agg(distinct id) ids, min(id) min_id
    from unified where dataset='EthRacer'
    group by substring(id for 42),property)
insert into ignore
select 'EthRacer', id, property, 'duplicate own id', min_id
from t, unnest(ids) id
where id <> min_id
on conflict do nothing;

-- duplicate own ids for Zeus
with t as (
    select
        property, array_agg(distinct id) ids, min(id) min_id
    from unified where dataset='Zeus'
    group by substring(id from 6),property)
insert into ignore
select 'Zeus', id, property, 'duplicate own id', min_id
from t, unnest(ids) id
where id <> min_id
on conflict do nothing;

-- duplicates (addr)
with t as (
    select
        id_a, dataset, property,
        array_agg(distinct id) ids,
	array_agg(distinct property_holds) status,
	min(id) min_id 
    from unified group by 1,2,3) 
insert into ignore
select dataset, id, property, 'duplicate address', min_id
from t, unnest(ids) id
where id <> min_id and array_length(status,1) = 1
on conflict do nothing;

-- duplicates (fp_sol)
with t as (
    select
        id_as, dataset, property,
	array_agg(distinct id) ids,
	array_agg(distinct property_holds) status,
	min(id) min_id 
    from unified group by 1,2,3) 
insert into ignore
select dataset, id, property, 'duplicate source', min_id
from t, unnest(ids) id
where id <> min_id and array_length(status,1) = 1
on conflict do nothing;

-- duplicates (fp_sol without pragma)
with t as (
    select
        id_as2, dataset, property,
	array_agg(distinct id) ids,
	array_agg(distinct property_holds) status,
	min(id) min_id 
    from unified natural join mapping
    where swc not in (102,103)
    group by 1,2,3) 
insert into ignore
select dataset, id, property, 'duplicate source', min_id
from t, unnest(ids) id
where id <> min_id and array_length(status,1) = 1
on conflict do nothing;

-- duplicate assessments (fp_bytecode)
-- do not ignore if only visible in source
with t as (
    select
        id_asb2, dataset, property,
	array_agg(distinct id) ids,
	array_agg(distinct property_holds) status,
	min(id) min_id 
    from unified natural join mapping
    -- non-existent: 121, 122, 126, 137-994, 998.
    -- only in source: (100, 102, 103, 108, 109, 111, 118, 119, 125, 129, 130, 136)
    where swc in (101, 104, 105, 106, 107, 110, 112, 113,
    114, 115, 116, 117, 120, 123, 124, 127, 128, 131, 132, 133, 134, 135, 995,
    996, 997, 999)
    group by 1,2,3) 
insert into ignore
select dataset, id, property, 'duplicate bytecode', min_id
from t, unnest(ids) id
where id <> min_id and array_length(status,1) = 1
on conflict do nothing;

-- duplicate assessments (fp_runtime)
with t as (
    select
        id_asbr2, dataset, property,
	array_agg(distinct id) ids,
	array_agg(distinct property_holds) status,
	min(id) min_id 
    from unified natural join mapping
    where swc in (107)
    group by 1,2,3) 
insert into ignore
select dataset, id, property, 'duplicate runtime code', min_id
from t, unnest(ids) id
where id <> min_id and array_length(status,1) = 1
on conflict do nothing;
