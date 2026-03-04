# ============================================
# macro:cooldown/set
# ============================================
# Starts a cooldown. Writes expiry epoch to storage.
# INPUT: macro:input { player:"<name>", key:"<cooldown>", duration:<tick> }
# ============================================

# current epoch + duration = expiry
$scoreboard players set $cd_dur macro.tmp $(duration)
execute store result score $cd_now macro.tmp run scoreboard players get $epoch macro.time
scoreboard players operation $cd_now macro.tmp += $cd_dur macro.tmp
$execute store result storage macro:engine cooldowns.$(player).$(key) int 1 run scoreboard players get $cd_now macro.tmp
