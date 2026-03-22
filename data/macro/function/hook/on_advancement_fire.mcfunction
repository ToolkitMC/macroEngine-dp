# ─────────────────────────────────────────────────────────────────
# macro:hook/on_advancement_fire
# Kullanıcının kendi advancement reward fonksiyonundan çağrılır.
# "advancement:<id>" formatında event'i tetikler.
#
# INPUT (storage macro:input):
#   advancement → advancement ID (örn: "story/mine_stone")
#
# KULLANIM:
#   1) Kendi advancement JSON'ınızda reward olarak bir fonksiyon tanımlayın:
#      "rewards": {"function": "mypack:advancements/mine_stone"}
#
#   2) O fonksiyon içinde:
#      data modify storage macro:input advancement set value "story/mine_stone"
#      function macro:hook/on_advancement_fire
#
#   3) Hook bind:
#      data modify storage macro:input event set value "advancement:story/mine_stone"
#      data modify storage macro:input func  set value "mypack:on_first_mine"
#      function macro:hook/bind
# ─────────────────────────────────────────────────────────────────

function macro:hook/internal/on_advancement_fire with storage macro:input {}
