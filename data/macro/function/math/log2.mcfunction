# ============================================
# macro:math/log2
# ============================================
# 2 tabaninda integer logarithm: floor(log2(value))
# For finding bit length and detecting powers of two.
#
# Algoritma: Bit-shift simulation — value 1'e dusene kadar 2'ye bol, counteri artir.
# 31 iterasyon sufficientdir (2^31 > INT_MAX).
#
# INPUT: macro:input { value:<int> }
# OUTPUT: macro:output { result:<int> }
# result = -1 → value <= 0 (tanimsiz)
#
# EXAMPLES:
# log2(1) → 0
# log2(2) → 1
# log2(4) → 2
# log2(7) → 2 (floor)
# log2(8) → 3
# log2(1024)→ 10
# ============================================

$scoreboard players set $lg2_v macro.tmp $(value)

# value <= 0 → tanimsiz, -1 dondur
execute if score $lg2_v macro.tmp matches ..0 run data modify storage macro:output result set value -1
execute if score $lg2_v macro.tmp matches ..0 run return 0

scoreboard players set $lg2_r macro.tmp 0
scoreboard players set $lg2_2 macro.tmp 2

# Bit kaydirma benzetimi: value >= 2 oldugu surece 2'ye bol, counteri artir
function macro:math/internal/log2_loop

execute store result storage macro:output result int 1 run scoreboard players get $lg2_r macro.tmp
