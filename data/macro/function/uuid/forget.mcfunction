# ============================================================
# macro:uuid/forget
# Önbellekten bir UUID girişini siler
#
# KULLANIM:
#   data modify storage macro:input key set value "benim_anahtarim"
#   function macro:uuid/forget
#
# GİRİŞ:
#   macro:input key → silinecek anahtar adı
# ============================================================
function macro:uuid/internal/forget_key with storage macro:input
