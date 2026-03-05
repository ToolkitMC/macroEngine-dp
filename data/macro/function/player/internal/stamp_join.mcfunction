# Save join epoch (absolute tick — $epoch macro.time)
# BUG FIX: $tick macro.tmp (0-20 cyclic) → $epoch macro.time
$execute store result storage macro:engine players.$(player).joined_tick int 1 run scoreboard players get $epoch macro.time
