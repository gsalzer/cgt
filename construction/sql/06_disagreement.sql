DROP TABLE IF EXISTS disagreement;
CREATE TABLE disagreement (like cleaned);
ALTER TABLE disagreement ADD COLUMN swc INTEGER;
ALTER TABLE disagreement ADD PRIMARY KEY (dataset,id,property);

-- optionally, add some indexes
CREATE INDEX ON disagreement(addr);
CREATE INDEX ON disagreement(fp_sol);
CREATE INDEX ON disagreement(fp_bytecode);
CREATE INDEX ON disagreement(fp_runtime);
CREATE INDEX ON disagreement(id_a);
CREATE INDEX ON disagreement(id_as);
CREATE INDEX ON disagreement(id_asb);
CREATE INDEX ON disagreement(id_asbr);
CREATE INDEX ON disagreement(id_as2);
CREATE INDEX ON disagreement(id_asb2);
CREATE INDEX ON disagreement(id_asbr2);

-----------------------------------
-- fill disagreements into table --
-----------------------------------

-- address or source
with t as (
    select
        swc, id_as,
        array_agg(distinct (dataset,property)) props,
	array_agg(distinct property_holds) status
    from cleaned natural join mapping
    where swc in (102,103)
    group by swc, id_as)
insert into disagreement
select c.*, t.swc
from t join cleaned c
    on (c.dataset,c.property)=any(t.props) and c.id_as = t.id_as
where array_length(t.status,1) > 1;

-- address or source (ignore pragma)
with t as (
    select
        swc, id_as2,
        array_agg(distinct (dataset,property)) props,
	array_agg(distinct property_holds) status
    from cleaned natural join mapping
    where swc in (100, 108, 109, 111, 118, 119, 125, 129, 130, 136)
    group by swc, id_as2)
insert into disagreement
select c.*, t.swc
from t join cleaned c
    on (c.dataset,c.property)=any(t.props) and c.id_as2 = t.id_as2
where array_length(t.status,1) > 1;

-- address or source (ignore pragma) or bytecode
with t as (
    select
        swc, id_asb2,
        array_agg(distinct (dataset,property)) props,
	array_agg(distinct property_holds) status
    from cleaned natural join mapping
    where swc not in (100, 102, 103, 108, 109, 111, 118, 119, 125, 129, 130, 136)
    group by swc, id_asb2)
insert into disagreement
select c.*, t.swc
from t join cleaned c
    on (c.dataset,c.property)=any(t.props) and c.id_asb2 = t.id_asb2
where array_length(t.status,1) > 1;
