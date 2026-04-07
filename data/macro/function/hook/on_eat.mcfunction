# ─────────────────────────────────────────────────────────────────
# macro:hook/on_eat
# Oyuncu yemek yediğinde tetiklenir.
# consume_item advancement tabanlı.
#
# INPUT:
#   $(func) veya $(cmd) → tetiklenecek fonksiyon / komut
#   $(tag)              → (opsiyonel) bind etiketi
#
# USAGE:
#   function macro:hook/bind {event:"eat",func:"mypack:on_eat"}
# ─────────────────────────────────────────────────────────────────
function macro:hook/bind {event:"eat",func:"$(func)"}
