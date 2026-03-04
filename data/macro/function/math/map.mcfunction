# ============================================
# macro:math/map
# ============================================
# Maps a value from [in_min, in_max] araligindan [out_min, out_max] araligina esler.
# Uses linear interpolation (lerp tabanli).
# Integer arithmetic may lose precision on small ranges.
#
# Formul: out_min + (value - in_min) * (out_max - out_min) / (in_max - in_min)
#
# INPUT: macro:input { value:<int>, in_min:<int>, in_max:<int>, out_min:<int>, out_max:<int> }
# OUTPUT: macro:output { result:<int> }
#
# EXAMPLE:
# # Playernun canini (0-20) 0-100 arasi yuzdeye cevir
# data modify storage macro:input value set value 14
# data modify storage macro:input in_min set value 0
# data modify storage macro:input in_max set value 20
# data modify storage macro:input out_min set value 0
# data modify storage macro:input out_max set value 100
# function macro:math/map with storage macro:input {}
# # → result = 70
# ============================================

$scoreboard players set $map_v macro.tmp $(value)
$scoreboard players set $map_imin macro.tmp $(in_min)
$scoreboard players set $map_imax macro.tmp $(in_max)
$scoreboard players set $map_omin macro.tmp $(out_min)
$scoreboard players set $map_omax macro.tmp $(out_max)

# in_range = in_max - in_min
scoreboard players operation $map_ir macro.tmp = $map_imax macro.tmp
scoreboard players operation $map_ir macro.tmp -= $map_imin macro.tmp

# in_range == 0 ise bolme sifir hatasi — out_min dondur
execute if score $map_ir macro.tmp matches 0 run execute store result storage macro:output result int 1 run scoreboard players get $map_omin macro.tmp
execute if score $map_ir macro.tmp matches 0 run return 0

# out_range = out_max - out_min
scoreboard players operation $map_or macro.tmp = $map_omax macro.tmp
scoreboard players operation $map_or macro.tmp -= $map_omin macro.tmp

# offset = value - in_min
scoreboard players operation $map_off macro.tmp = $map_v macro.tmp
scoreboard players operation $map_off macro.tmp -= $map_imin macro.tmp

# result = out_min + offset * out_range / in_range
scoreboard players operation $map_off macro.tmp *= $map_or macro.tmp
scoreboard players operation $map_off macro.tmp /= $map_ir macro.tmp
scoreboard players operation $map_off macro.tmp += $map_omin macro.tmp

execute store result storage macro:output result int 1 run scoreboard players get $map_off macro.tmp
