# ============================================
# macro:math/sqrt
# ============================================
# Integer square root: floor(√value)
# INPUT: macro:input { value:<int> }
# OUTPUT: macro:output { result:<int> }
#
# Maksimum girdi: 2,147,395,600 (46340² ≈ 2³¹)
# Daha buyuk valueler 46340 dondurur.
#
# Algoritma: Binary search, 16 iterasyon
# Invaryant: lo² ≤ value < hi²
# Baslangic: lo=0, hi=min(value, 46341)
# 16 adim → aralik 1'e duser → lo = floor(√value)
# ============================================

$scoreboard players set $sqrt_n macro.tmp $(value)

# Negative and zero edge case
execute if score $sqrt_n macro.tmp matches ..0 run data modify storage macro:output result set value 0
execute if score $sqrt_n macro.tmp matches ..0 run return 0

# Girdi 1 ise sonuc 1
execute if score $sqrt_n macro.tmp matches 1 run data modify storage macro:output result set value 1
execute if score $sqrt_n macro.tmp matches 1 run return 0

# Binary search sinirlarini start
scoreboard players set $sqrt_lo macro.tmp 0
scoreboard players operation $sqrt_hi macro.tmp = $sqrt_n macro.tmp
# Ust siniri 46341 via sinirla (46341² > 2^31 asimi engeli)
execute if score $sqrt_hi macro.tmp matches 46342.. run scoreboard players set $sqrt_hi macro.tmp 46341

# 16 iterations (2^16 = 65536 > 46341 → sufficient for all values)
scoreboard players set $sqrt_itr macro.tmp 16
function macro:math/internal/sqrt_step

# lo = floor(√value)
execute store result storage macro:output result int 1 run scoreboard players get $sqrt_lo macro.tmp
