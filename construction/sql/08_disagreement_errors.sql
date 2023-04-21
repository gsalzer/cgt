DROP TABLE IF EXISTS disagreement_error;

CREATE TABLE disagreement_error (
    dataset TEXT,
    id TEXT,
    property TEXT,
    PRIMARY KEY (dataset,id,property),
    property_holds BOOLEAN,
    swc INTEGER,
    UNIQUE (dataset,id,swc),
    analysis TEXT
);

CREATE TEMP TABLE errors (
    swc INTEGER,
    assessment BOOLEAN,
    dataset_id TEXT,
    analysis TEXT
);

\copy errors from 08_disagreement_errors.csv with csv header delimiter ';'

INSERT INTO disagreement_error
SELECT
    split_part(e.dataset_id,'/',1) dataset,
    split_part(e.dataset_id,'/',2) id,
    d.property,
    e.assessment property_holds,
    e.swc,
    e.analysis
FROM
    errors e left join disagreement d
    on e.dataset_id = d.dataset || '/' || d.id
        and e.swc = d.swc
	and e.assessment = d.property_holds;
