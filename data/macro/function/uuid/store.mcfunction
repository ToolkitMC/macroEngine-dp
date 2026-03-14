# ============================================================
# macro:uuid/store
# @s entity'sinin UUID'sini hem string hem int array olarak önbellekler
#
# KULLANIM:
#   data modify storage macro:input key set value "benim_anahtarim"
#   execute as <entity> run function macro:uuid/store
#
# GİRİŞ:
#   macro:input key → depolama anahtar adı (örn. "spawn_point_owner")
#
# ÇIKIŞ (macro:engine uuid_cache.<key>):
#   .str → UUID hex string
#   .arr → UUID int array [I; a, b, c, d]
#
# GU'da bu özellik yok — AME'ye özgü gelişmiş fonksiyon.
# ============================================================

# UUID string'ini oluştur → macro:input value
function macro:uuid/from_entity

# Array formunu da yedekle (from_entity _work'ü zaten doldurdu)
data modify storage macro:uuid _store_arr set from storage macro:uuid _work

# Her ikisini de önbelleğe yaz (anahtar adını macro ile al)
function macro:uuid/internal/store_write with storage macro:input
