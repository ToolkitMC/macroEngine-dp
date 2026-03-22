# ─────────────────────────────────────────────────────────────────
# macro:lib/fiber/spawn
# Yeni bir fiber başlatır ve ilk adımını hemen çalıştırır.
# Aynı id ile spawn edilirse mevcut fiber silinip yeniden başlar.
#
# INPUT (storage macro:input):
#   id   → fiber kimliği (benzersiz string)
#   func → başlatılacak fonksiyon adı
#
# ÖRNEK:
#   data modify storage macro:input id   set value "boss_intro"
#   data modify storage macro:input func set value "mypack:boss/step_0"
#   function macro:lib/fiber/spawn
# ─────────────────────────────────────────────────────────────────

function macro:lib/fiber/internal/spawn_exec with storage macro:input {}
