DROP TABLE IF EXISTS cleaned;
create table cleaned (like unified);
alter table cleaned add primary key (dataset,id,property);

-- optionally, add some indexes
create index on cleaned(addr);
create index on cleaned(fp_sol);
create index on cleaned(fp_bytecode);
create index on cleaned(fp_runtime);
create index on cleaned(id_a);
create index on cleaned(id_as);
create index on cleaned(id_asb);
create index on cleaned(id_asbr);
create index on cleaned(id_as2);
create index on cleaned(id_asb2);
create index on cleaned(id_asbr2);

insert into cleaned
select * from unified u
where not exists (
    select from ignore i
    where i.dataset=u.dataset and i.id=u.id and i.property=u.property);

