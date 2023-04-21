DROP TABLE IF EXISTS consolidated;

create table consolidated (
    dataset TEXT,
    id TEXT,
    property TEXT,
    PRIMARY KEY (dataset,id,property),
    property_holds BOOLEAN not NULL,
    chain TEXT,
    addr TEXT,
    contractname TEXT,
    fp_sol TEXT,
    fp_sol2 TEXT,
    fp_bytecode TEXT,
    fp_runtime TEXT,
    swc INTEGER,
    dasp INTEGER
);
    
insert into consolidated
select
    c.dataset, c.id, c.property, c.property_holds,
    c.chain, c.addr,
    c.contractname, c.fp_sol, c.fp_sol2,
    c.fp_bytecode,
    c.fp_runtime,
    m.swc, m.dasp
from cleaned c left join mapping m on m.dataset=c.dataset and m.property=c.property
where
    not exists (
        select from disagreement_error d
        where d.dataset=c.dataset and d.id=c.id and d.property=c.property)
    and not exists (
        select from checked chk
	where chk.dataset=c.dataset and chk.id=c.id and chk.property=c.property and not chk.is_correct);

\copy consolidated to ../consolidated.csv with csv header delimiter ';'
