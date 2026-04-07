# ─────────────────────────────────────────────────────────────────
# macro:cmd/console_say
# Sunucu konsoluna ve tüm oyunculara /say komutuyla mesaj gönderir.
# /say komutu "[SERVER]" prefix'i ile çıktı üretir; hem konsolda
# hem oyun içinde görünür — datapack debug için kullanışlıdır.
#
# INPUT:
#   $(message) → gönderilecek metin
#
# EXAMPLE:
#   function macro:cmd/console_say {message:"Hook fired: player_join"}
#   # Konsol: [Server] Hook fired: player_join
# ─────────────────────────────────────────────────────────────────

$say $(message)
