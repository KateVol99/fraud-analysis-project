CREATE TABLE amount_segments (
    segment_id INTEGER,
    segment_name VARCHAR(30),
    min_amount NUMERIC,
    max_amount NUMERIC
);

INSERT INTO amount_segments VALUES
(1,'Low',0,50),
(2,'Medium',50,200),
(3,'High',200,1000),
(4,'Very High',1000,999999);