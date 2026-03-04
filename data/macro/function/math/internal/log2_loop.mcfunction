# Do not call directly — math/log2 is used by.
# BUG FIX v3.2: Dogru sira: dur <= 1, sonra r++, sonra bol
# Previous code: divide, stop at 1, r++ -- returned log2(2)=0 (correct: 1)

# v <= 1 ise dur
execute if score $lg2_v macro.tmp matches ..1 run return 0

# r++ and bol
scoreboard players add $lg2_r macro.tmp 1
scoreboard players operation $lg2_v macro.tmp /= $lg2_2 macro.tmp

function macro:math/internal/log2_loop
