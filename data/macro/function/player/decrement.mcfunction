# macro:player/decrement — Decrement variable by 1 (shortcut)
# INPUT: macro:input { player:"<name>", key:"<variable>" }
# OUTPUT: macro:output { result:<new_value> }
# BUG FIX v2.5: macro:input.amount is no longer contaminated; subtraction done directly via scoreboard.

$execute store result score $pvar macro.tmp run data get storage macro:engine players.$(player).$(key)
scoreboard players remove $pvar macro.tmp 1
$execute store result storage macro:engine players.$(player).$(key) int 1 run scoreboard players get $pvar macro.tmp
execute store result storage macro:output result int 1 run scoreboard players get $pvar macro.tmp
