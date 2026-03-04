# macro:player/clamp_var — Clamp player variable to min..max range
# Use after add_to_var or set_var to prevent overflow.
# INPUT: macro:input { player:"<name>", key:"<variable>", min:<int>, max:<int> }
# OUTPUT: macro:output { result:<sinirlanmis value> }

$execute store result score $cv macro.tmp run data get storage macro:engine players.$(player).$(key)
$scoreboard players set $cv_mn macro.tmp $(min)
$scoreboard players set $cv_mx macro.tmp $(max)
execute if score $cv macro.tmp < $cv_mn macro.tmp run scoreboard players operation $cv macro.tmp = $cv_mn macro.tmp
execute if score $cv macro.tmp > $cv_mx macro.tmp run scoreboard players operation $cv macro.tmp = $cv_mx macro.tmp
$execute store result storage macro:engine players.$(player).$(key) int 1 run scoreboard players get $cv macro.tmp
execute store result storage macro:output result int 1 run scoreboard players get $cv macro.tmp
