ALTER TABLE recipes ADD is_healthy tinyint(1) default 0 after is_refresh;
ALTER TABLE recipes ADD is_caloryoff tinyint(1) default 0 after is_healthy;
