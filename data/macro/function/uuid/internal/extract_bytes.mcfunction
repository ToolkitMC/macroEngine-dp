# ============================================================
# macro:uuid/internal/extract_bytes
# 4 UUID int'ini 16 byte'a ayırır (doğru işaretli tamsayı aritmetiği)
#
# GEREKSİNİM: Aşağıdaki fake-player skorları dolu olmalı:
#   $uuid.0  $uuid.1  $uuid.2  $uuid.3  macro.tmp
#   $uuid.256 macro.tmp = 256  (init tarafından kurulur)
#
# ÇIKIŞ: storage macro:uuid _tmp
#   Alanlar  0..3  → int 0'ın byte'ları (0=LSB, 3=MSB)
#   Alanlar  4..7  → int 1'in byte'ları
#   Alanlar  8..b  → int 2'nin byte'ları
#   Alanlar  c..f  → int 3'ün byte'ları
#   Her alan 0–255 aralığında garantilidir.
#
# NEDEN GU'DAN FARKLI?
#   Java'nın `/` operatörü negatif bölünenlerde sıfıra doğru keser.
#   Örneğin: -1 / 256 = 0  (floor = -1 olmalı).
#   GU bu durumu ele almaz; negatif int'lerin yüksek byte'ları yanlış
#   hesaplanır. Bu fonksiyon floor-bölme yöntemiyle her byte'ı doğru
#   şekilde çıkarır:
#     b_raw = v % 256          (Java mod, -255..255 arası)
#     if b_raw < 0:
#         v = (v / 256) - 1    (floor bölmesi için düzeltme)
#         b = b_raw + 256      (0..255'e normalize)
#     else:
#         v = v / 256
#         b = b_raw
# ============================================================

# --- INT 0 (UUID'nin ilk 4 byte'ı, alanlar 0..3) ---

# byte 0 — LSB
scoreboard players operation $uuid.a macro.tmp = $uuid.0 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.0 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.0 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.0 int 1 run scoreboard players get $uuid.a macro.tmp

# byte 1
scoreboard players operation $uuid.a macro.tmp = $uuid.0 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.0 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.0 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.1 int 1 run scoreboard players get $uuid.a macro.tmp

# byte 2
scoreboard players operation $uuid.a macro.tmp = $uuid.0 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.0 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.0 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.2 int 1 run scoreboard players get $uuid.a macro.tmp

# byte 3 — MSB (son byte, bölme yok)
scoreboard players operation $uuid.a macro.tmp = $uuid.0 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.3 int 1 run scoreboard players get $uuid.a macro.tmp

# --- INT 1 (alanlar 4..7) ---

# byte 0 — LSB
scoreboard players operation $uuid.a macro.tmp = $uuid.1 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.1 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.1 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.4 int 1 run scoreboard players get $uuid.a macro.tmp

# byte 1
scoreboard players operation $uuid.a macro.tmp = $uuid.1 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.1 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.1 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.5 int 1 run scoreboard players get $uuid.a macro.tmp

# byte 2
scoreboard players operation $uuid.a macro.tmp = $uuid.1 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.1 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.1 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.6 int 1 run scoreboard players get $uuid.a macro.tmp

# byte 3 — MSB
scoreboard players operation $uuid.a macro.tmp = $uuid.1 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.7 int 1 run scoreboard players get $uuid.a macro.tmp

# --- INT 2 (alanlar 8..b) ---

# byte 0 — LSB
scoreboard players operation $uuid.a macro.tmp = $uuid.2 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.2 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.2 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.8 int 1 run scoreboard players get $uuid.a macro.tmp

# byte 1
scoreboard players operation $uuid.a macro.tmp = $uuid.2 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.2 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.2 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.9 int 1 run scoreboard players get $uuid.a macro.tmp

# byte 2
scoreboard players operation $uuid.a macro.tmp = $uuid.2 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.2 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.2 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.a int 1 run scoreboard players get $uuid.a macro.tmp

# byte 3 — MSB
scoreboard players operation $uuid.a macro.tmp = $uuid.2 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.b int 1 run scoreboard players get $uuid.a macro.tmp

# --- INT 3 (alanlar c..f) ---

# byte 0 — LSB
scoreboard players operation $uuid.a macro.tmp = $uuid.3 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.3 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.3 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.c int 1 run scoreboard players get $uuid.a macro.tmp

# byte 1
scoreboard players operation $uuid.a macro.tmp = $uuid.3 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.3 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.3 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.d int 1 run scoreboard players get $uuid.a macro.tmp

# byte 2
scoreboard players operation $uuid.a macro.tmp = $uuid.3 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
scoreboard players operation $uuid.3 macro.tmp /= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players remove $uuid.3 macro.tmp 1
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.e int 1 run scoreboard players get $uuid.a macro.tmp

# byte 3 — MSB
scoreboard players operation $uuid.a macro.tmp = $uuid.3 macro.tmp
scoreboard players operation $uuid.a macro.tmp %= $uuid.256 macro.tmp
execute if score $uuid.a macro.tmp matches ..-1 run scoreboard players add $uuid.a macro.tmp 256
execute store result storage macro:uuid _tmp.f int 1 run scoreboard players get $uuid.a macro.tmp
