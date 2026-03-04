# ============================================
# macro:player/transfer_var
# ============================================
# Transfer a variable amount from one player to another (orn: coin gonderme).
# from playersundan amount dusulur, to playersuna amount addnir.
# Negatiand balance is NOT prevented — gerekirse check has_enough beforehand.
#
# INPUT: macro:input { from:"<source>", to:"<target>", key:"<variable>", amount:<int> }
# OUTPUT: macro:output { result:<hedef_yeni_value> }
# ============================================

# from playersundan cikar
$execute store result score $tr_f macro.tmp run data get storage macro:engine players.$(from).$(key)
$scoreboard players set $tr_a macro.tmp $(amount)
scoreboard players operation $tr_f macro.tmp -= $tr_a macro.tmp
$execute store result storage macro:engine players.$(from).$(key) int 1 run scoreboard players get $tr_f macro.tmp

# to playersuna add
$execute store result score $tr_t macro.tmp run data get storage macro:engine players.$(to).$(key)
scoreboard players operation $tr_t macro.tmp += $tr_a macro.tmp
$execute store result storage macro:engine players.$(to).$(key) int 1 run scoreboard players get $tr_t macro.tmp

execute store result storage macro:output result int 1 run scoreboard players get $tr_t macro.tmp
