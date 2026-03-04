# ============================================
# macro:cmd/as_player
# ============================================
# Herhangi bir komutu runan player OLARAK and
# playernun KONUMUNDA runir.
# INPUT: macro:input { cmd:"<command>" }
# EXAMPLE:
# data modify storage macro:input cmd set value "effect give @s speed 5 2 true"
# function macro:cmd/as_player with storage macro:input {}
# ============================================

$execute as @s[type=minecraft:player] at @s run $(cmd)
