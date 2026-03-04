# ============================================
# macro:player/add_to_var
# ============================================
# Add to or subtract from a player's numeric variable.
# Use negatiand amount to subtract.
# INPUT: macro:input { player:"<name>", key:"<variable>", amount:<int> }
# OUTPUT: macro:output { result:<int> } ← new value
# ============================================

# Mevcut valuei scoreboard'a read
$execute store result score $pvar macro.tmp run data get storage macro:engine players.$(player).$(key)

# amount'u add
$scoreboard players set $pamount macro.tmp $(amount)
scoreboard players operation $pvar macro.tmp += $pamount macro.tmp

# Storage'a geri write
$execute store result storage macro:engine players.$(player).$(key) int 1 run scoreboard players get $pvar macro.tmp

# Output'a da write
execute store result storage macro:output result int 1 run scoreboard players get $pvar macro.tmp
