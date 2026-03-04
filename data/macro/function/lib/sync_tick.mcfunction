# ============================================
# macro:lib/sync_tick
# ============================================
# Every 20 ticks (1 sn) is called.
# - global.tick: tick count in the last 1s (debug/monitoring)
# - global.epoch: absolute tick counter (for cooldown calculations)
# - $tick macro.tmp is reset
# ============================================
execute store result storage macro:engine global.tick int 1 run scoreboard players get $tick macro.tmp
execute store result storage macro:engine global.epoch int 1 run scoreboard players get $epoch macro.time
scoreboard players set $tick macro.tmp 0
