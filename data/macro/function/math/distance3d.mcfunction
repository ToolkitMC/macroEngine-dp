# ============================================
# macro:math/distance3d
# ============================================
# Iki nokta arasindaki 3 boyutlu Oklid mesafesini hesaplar.
# Sonuc: floor(√(dx² + dy² + dz²))
#
# distance2d ile ayni sqrt altyapisini kullanir (sqrt_step).
# $d3d_* prefix'li gecici skorlar macro:tmp scoreboard'unda tutulur.
#
# INPUT: macro:input
# x1 / y1 / z1 : <int> — Birinci nokta
# x2 / y2 / z2 : <int> — Ikinci nokta
#
# OUTPUT: macro:output { result:<int> }
#
# EXAMPLE:
# data modify storage macro:input x1 set value 0
# data modify storage macro:input y1 set value 64
# data modify storage macro:input z1 set value 0
# data modify storage macro:input x2 set value 3
# data modify storage macro:input y2 set value 68
# data modify storage macro:input z2 set value 0
# function macro:math/distance3d with storage macro:input {}
# # → distance3d(0,64,0, 3,68,0) = floor(√(9+16+0)) = 5
# ============================================

$scoreboard players set $d3d_x1 macro.tmp $(x1)
$scoreboard players set $d3d_y1 macro.tmp $(y1)
$scoreboard players set $d3d_z1 macro.tmp $(z1)
$scoreboard players set $d3d_x2 macro.tmp $(x2)
$scoreboard players set $d3d_y2 macro.tmp $(y2)
$scoreboard players set $d3d_z2 macro.tmp $(z2)

# dx = x2 - x1
scoreboard players operation $d3d_dx macro.tmp = $d3d_x2 macro.tmp
scoreboard players operation $d3d_dx macro.tmp -= $d3d_x1 macro.tmp

# dy = y2 - y1
scoreboard players operation $d3d_dy macro.tmp = $d3d_y2 macro.tmp
scoreboard players operation $d3d_dy macro.tmp -= $d3d_y1 macro.tmp

# dz = z2 - z1
scoreboard players operation $d3d_dz macro.tmp = $d3d_z2 macro.tmp
scoreboard players operation $d3d_dz macro.tmp -= $d3d_z1 macro.tmp

# d² = dx² + dy² + dz²
scoreboard players operation $d3d_dx macro.tmp *= $d3d_dx macro.tmp
scoreboard players operation $d3d_dy macro.tmp *= $d3d_dy macro.tmp
scoreboard players operation $d3d_dz macro.tmp *= $d3d_dz macro.tmp
scoreboard players operation $d3d_sq macro.tmp = $d3d_dx macro.tmp
scoreboard players operation $d3d_sq macro.tmp += $d3d_dy macro.tmp
scoreboard players operation $d3d_sq macro.tmp += $d3d_dz macro.tmp

# ⚠ SINIR: d3d_sq = dx²+dy²+dz² int32 sinirini (2,147,483,647) asabilir.
# Her eksen yaklasik 26,000 bloktan buyukse overflow olusabilir ve sonuc yanlis cikabilir.
# Normal harita kullanimi icin (< 10,000 blok) sorun yoktur.

# Zero-distance edge case
execute if score $d3d_sq macro.tmp matches 0 run data modify storage macro:output result set value 0
execute if score $d3d_sq macro.tmp matches 0 run return 0

# sqrt(d²) — macro:math/sqrt ile ayni binary search mantigi
scoreboard players operation $sqrt_n macro.tmp = $d3d_sq macro.tmp
scoreboard players set $sqrt_lo macro.tmp 0
scoreboard players operation $sqrt_hi macro.tmp = $sqrt_n macro.tmp
execute if score $sqrt_hi macro.tmp matches 46342.. run scoreboard players set $sqrt_hi macro.tmp 46341
scoreboard players set $sqrt_itr macro.tmp 16
function macro:math/internal/sqrt_step

execute store result storage macro:output result int 1 run scoreboard players get $sqrt_lo macro.tmp
