# ─────────────────────────────────────────────────────────────────
# macro:cmd/console_me
# /me komutuyla eylem mesajı gönderir (italic, sarı).
# Konsola ve oyunculara "* @" prefix'iyle görünür.
# Hafif debug bildirimleri veya olay loglaması için kullanılır.
#
# INPUT:
#   $(message) → eylem metni
#
# EXAMPLE:
#   function macro:cmd/console_me {message:"AME scheduler tick fired"}
#   # Oyun içi: * @ AME scheduler tick fired
# ─────────────────────────────────────────────────────────────────

$me $(message)
