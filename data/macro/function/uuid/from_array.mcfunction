# ============================================================
# macro:uuid/from_array
# macro:input value'deki int array'i UUID string'e çevirir
#
# KULLANIM:
#   data modify storage macro:input value set value [I; a, b, c, d]
#   function macro:uuid/from_array
#
# GİRİŞ:
#   macro:input value → [I; int0, int1, int2, int3]
#
# ÇIKIŞ:
#   macro:input value → "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
#
# GU karşılaştırması:
#   - gu:convert → function gu:convert {UUID:[I;0,1,2,3]}  (makro arg)
#   - bu fonksiyon → macro:input value üzerinden standart AME akışı
# ============================================================

# int[4] dizisini doğrudan macro:input value'dan oku
execute store result score $uuid.0 macro.tmp run data get storage macro:input value[0]
execute store result score $uuid.1 macro.tmp run data get storage macro:input value[1]
execute store result score $uuid.2 macro.tmp run data get storage macro:input value[2]
execute store result score $uuid.3 macro.tmp run data get storage macro:input value[3]

# 16 byte'a ayır → hex char'lara çevir → UUID string'i birleştir
function macro:uuid/internal/extract_bytes
function macro:uuid/internal/get_hexes with storage macro:uuid _tmp
function macro:uuid/internal/concat with storage macro:uuid _tmp
