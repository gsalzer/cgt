DROP TABLE IF EXISTS addr_block;
CREATE TABLE addr_block (
    addr TEXT PRIMARY KEY,
    block INTEGER);
\COPY addr_block FROM 04_addr_block.csv WITH csv header

-- 04_addr_block.csv generated by
-- \copy (select u.addr,min((c.cdate).bid) block from unified u join creation c on c.aid = addr2id(u.addr) group by u.addr) to 04_addr_block.csv with csv header