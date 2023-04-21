DROP TABLE IF EXISTS mapping;
create table mapping (
    dataset TEXT,
    property TEXT,
    swc INTEGER,
    dasp INTEGER,
    PRIMARY KEY (dataset,property)
);

\copy mapping from 02_mapping.csv with csv header delimiter ';'
