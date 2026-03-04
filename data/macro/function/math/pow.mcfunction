# ============================================
# macro:math/pow
# ============================================
# a^n hesaplar (integer exponentiation).
# Repeated multiplication method — n adim depth.
# Uyari: large a and n values cause 32-bit overflow
# (Minecraft scoreboard 32-bit signed).
#
# INPUT: macro:input { a:<int>, n:<int> } (n >= 0)
# OUTPUT: macro:output { result:<int> }
#
# EXAMPLES:
# a:2, n:10 → 1024
# a:3, n:5 → 243
# a:7, n:0 → 1 (any number to the power of 0 is 1)
# a:0, n:0 → 1 (0^0 = 1 matematiksel tanim geregi)
# ============================================

$scoreboard players set $pow_a macro.tmp $(a)
$scoreboard players set $pow_n macro.tmp $(n)
scoreboard players set $pow_r macro.tmp 1

# n=0 → result=1 hizli cikis
execute if score $pow_n macro.tmp matches 0 run execute store result storage macro:output result int 1 run scoreboard players get $pow_r macro.tmp
execute if score $pow_n macro.tmp matches 0 run return 0

function macro:math/internal/pow_loop
execute store result storage macro:output result int 1 run scoreboard players get $pow_r macro.tmp
