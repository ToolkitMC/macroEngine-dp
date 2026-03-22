# ─────────────────────────────────────────────────────────────────
# macro:geo/region_watch/register
# Kalıcı bir bölge tanımlar. Her tick oyuncu pozisyonu kontrol edilir;
# oyuncu bölgeye girince on_enter, çıkınca on_leave tetiklenir.
# hook/internal/tick_scan döngüsüne bağlıdır.
#
# INPUT (storage macro:input):
#   id        → bölge kimliği (benzersiz string)
#   x1, y1, z1, x2, y2, z2 → köşe koordinatları (integer)
#   on_enter  → (opsiyonel) giriş fonksiyonu — as tetiklenen oyuncu
#   on_leave  → (opsiyonel) çıkış fonksiyonu — as tetiklenen oyuncu
#   on_enter_cmd → (opsiyonel) giriş komutu
#   on_leave_cmd → (opsiyonel) çıkış komutu
#
# ÖRNEK:
#   data modify storage macro:input id       set value "spawn_safe"
#   data modify storage macro:input x1       set value 0
#   data modify storage macro:input y1       set value 60
#   data modify storage macro:input z1       set value 0
#   data modify storage macro:input x2       set value 100
#   data modify storage macro:input y2       set value 120
#   data modify storage macro:input z2       set value 100
#   data modify storage macro:input on_enter set value "mypack:zones/safe_enter"
#   data modify storage macro:input on_leave set value "mypack:zones/safe_leave"
#   function macro:geo/region_watch/register
# ─────────────────────────────────────────────────────────────────

function macro:geo/region_watch/internal/register_exec with storage macro:input {}
