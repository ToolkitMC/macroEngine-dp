# ============================================================
# macro:uuid/recall_array
# Önbellekten UUID int array'ini getirir
#
# KULLANIM:
#   data modify storage macro:input key set value "benim_anahtarim"
#   function macro:uuid/recall_array
#
# GİRİŞ:
#   macro:input key → uuid/store ile kullanılan anahtar adı
#
# ÇIKIŞ:
#   macro:input value → UUID int array [I; a, b, c, d]
#                       (anahtar yoksa value değişmez)
#
# Kullanım senaryosu: entity NBT'ye UUID yazmak (ör. Owner alanı)
# ============================================================
function macro:uuid/internal/recall_arr_read with storage macro:input
