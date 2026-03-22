# ─────────────────────────────────────────────────────────────────
# macro:lib/fiber/kill
# Bir fiber'ı durdurur. Kuyruktaki bekleyen resume'lar çalışmaz.
#
# INPUT (storage macro:input):
#   id → fiber kimliği
# ─────────────────────────────────────────────────────────────────

function macro:lib/fiber/internal/kill_exec with storage macro:input {}
