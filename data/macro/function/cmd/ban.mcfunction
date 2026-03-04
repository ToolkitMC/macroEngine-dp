# macro:cmd/ban — Ban a player
# INPUT: macro:input { player:"<name>", reason:"<reason>" }
# ⚠ Only works on dedicated servers, no effect in singleplayer

execute unless entity @s[tag=macro.admin] run return 0

$ban $(player) $(reason)
