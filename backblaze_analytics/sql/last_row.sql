select `OID`, strftime("%s", `date`)/(3600*24) AS `day`, * from `drive_stats_1` where `oid` = (select max(`oid`) from `drive_stats_1`);
select `OID`, strftime('%Y-%m-%d', `date`*(3600*24), 'unixepoch') AS `day`, * from `drive_stats` where `oid` = (select max(`oid`) from `drive_stats`);