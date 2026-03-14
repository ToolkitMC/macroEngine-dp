# ============================================================
# macro:uuid/recall
# Önbellekten UUID string'ini getirir
#
# KULLANIM:
#   data modify storage macro:input key set value "benim_anahtarim"
#   function macro:uuid/recall
#
# GİRİŞ:
#   macro:input key → uuid/store ile kullanılan anahtar adı
#
# ÇIKIŞ:
#   macro:input value → UUID hex string
#                       (anahtar yoksa value değişmez)
# ============================================================
function macro:uuid/internal/recall_read with storage macro:input
