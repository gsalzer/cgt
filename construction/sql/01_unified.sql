DROP TABLE IF EXISTS unified;
CREATE TABLE unified (
        dataset TEXT,
        id TEXT,
        id_a INTEGER,
        id_as INTEGER,
        id_asb INTEGER,
        id_asbr INTEGER,
        id_as2 INTEGER,
        id_asb2 INTEGER,
        id_asbr2 INTEGER,
        chain TEXT,
        chain_orig BOOLEAN,
        addr TEXT,
        addr_orig BOOLEAN,
        contractname TEXT,
        contractname_orig BOOLEAN,
        compiler TEXT,
        compiler_orig BOOLEAN,
        fp_sol TEXT,
        fp_sol2 TEXT,
        sol_orig BOOLEAN,
        fp_bytecode TEXT,
        bytecode_orig BOOLEAN,
        fp_runtime TEXT,
        runtime_orig BOOLEAN,
        sol TEXT,
        bytecode TEXT,
        runtime TEXT,
        property TEXT,
        property_holds BOOLEAN,
        PRIMARY KEY (dataset,id,property)
);

create index on unified(addr);
create index on unified(fp_sol);
create index on unified(fp_bytecode);
create index on unified(fp_runtime);
create index on unified(id_a);
create index on unified(id_as);
create index on unified(id_asb);
create index on unified(id_asbr);
create index on unified(id_as2);
create index on unified(id_asb2);
create index on unified(id_asbr2);

\copy unified from ../unified.csv with csv header delimiter ';'
