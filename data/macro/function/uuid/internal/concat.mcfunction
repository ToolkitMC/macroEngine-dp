# ============================================================
# macro:uuid/internal/concat  [MACRO FONKSİYON]
# 16 hex alan değerinden standart UUID string'i oluşturur
#
# Çağırma: function macro:uuid/internal/concat with storage macro:uuid _tmp
# Çıktı:   macro:input value → "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
#
# UUID byte sırası (büyük-endian, big-endian):
#   Segment 1 (8 hex): int0 MSB→LSB = [3][2][1][0]
#   Segment 2 (4 hex): int1 MSB→LSB = [7][6]
#   Segment 3 (4 hex): int1 devamı  = [5][4]
#   Segment 4 (4 hex): int2 MSB→LSB = [b][a]
#   Segment 5 (12 hex): int2 devamı + int3 = [9][8][f][e][d][c]
# ============================================================
$data modify storage macro:input value set value "$(3)$(2)$(1)$(0)-$(7)$(6)-$(5)$(4)-$(b)$(a)-$(9)$(8)$(f)$(e)$(d)$(c)"
