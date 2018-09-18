et session old_alter_table=1;
ALTER IGNORE TABLE `events` ADD UNIQUE (match_id,league_id,country_id);
set session old_alter_table=0;
