ALTER TABLE recipes ADD recipe_country_id bigint after howto_id;
ALTER TABLE recipes ADD mainsub_id bigint after recipe_country_id;
