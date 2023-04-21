DROP TABLE IF EXISTS checked;
CREATE TABLE checked (
    swc INTEGER,
    dataset TEXT,
    id TEXT,
    property TEXT,
    PRIMARY KEY (dataset,id,property),
    property_holds BOOLEAN,
    is_correct BOOLEAN,
    comment TEXT
);

\copy checked from 09_checked.csv with csv header delimiter ';'
