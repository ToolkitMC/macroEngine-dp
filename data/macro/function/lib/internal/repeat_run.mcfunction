# Iterasyonu run, counteri guncelle, tekrarla
execute store result score $rep_r macro.tmp run data get storage macro:engine _repeat.remaining
execute if score $rep_r macro.tmp matches ..0 run return 0

# Run the function (i is accessible as the current iteration index)
function macro:lib/internal/repeat_call with storage macro:engine _repeat

# remaining azalt, i artir
scoreboard players remove $rep_r macro.tmp 1
execute store result storage macro:engine _repeat.remaining int 1 run scoreboard players get $rep_r macro.tmp
execute store result score $rep_i macro.tmp run data get storage macro:engine _repeat.i
scoreboard players add $rep_i macro.tmp 1
execute store result storage macro:engine _repeat.i int 1 run scoreboard players get $rep_i macro.tmp

function macro:lib/internal/repeat_run
