# ============================================
# macro:math/mod
# ============================================
# Safe modulo — always returns a result in the range [0, divisor).
# Minecraft scoreboard'un % operatoru negatif valueler for negatif
# sonuc dondurur; bu function always returns non-negative.
#
# INPUT: macro:input { value:<int>, divisor:<int> }
# OUTPUT: macro:output { result:<int> }
# divisor <= 0 ise result = 0 (guvenli cikis)
#
# EXAMPLES:
# mod(7, 3) → 1
# mod(-1, 3) → 2 (Minecraft'ta -1 % 3 = -1, bu function 2 dondurur)
# mod(9, 3) → 0
# ============================================

$scoreboard players set $mod_v macro.tmp $(value)
$scoreboard players set $mod_d macro.tmp $(divisor)

# divisor <= 0 ise guvenli cikis
execute if score $mod_d macro.tmp matches ..0 run data modify storage macro:output result set value 0
execute if score $mod_d macro.tmp matches ..0 run return 0

scoreboard players operation $mod_v macro.tmp %= $mod_d macro.tmp

# Negatif sonucu normalize et
execute if score $mod_v macro.tmp matches ..-1 run scoreboard players operation $mod_v macro.tmp += $mod_d macro.tmp

execute store result storage macro:output result int 1 run scoreboard players get $mod_v macro.tmp
