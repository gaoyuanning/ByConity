SELECT sumIf(number, x), sum(x) FROM (SELECT number, number IN (0 + 1, 2 + 3, toUInt64(concat('8', ''))) AS x FROM system.numbers LIMIT 10);
SELECT toDate('2015-06-12') IN toDate('2015-06-12');
SELECT toDate('2015-06-12') IN (toDate('2015-06-12'));
SELECT today() IN (toDate('2014-01-01'), toDate(now()));
SELECT - -1 IN (2 - 1);
SELECT - -1 IN (2 - 1, 3);
SELECT 1 IN (1, 2), 3 IN (1, 2);
