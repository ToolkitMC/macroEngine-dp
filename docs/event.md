# 📡 Event — `macro:event/*`

← [README'ye Dön](../README.md)

---

## API

| Fonksiyon | Input | Açıklama |
|-----------|-------|---------|
| `event/register` | `{event, func}` | Event'e handler ekle |
| `event/fire` | `{event}` | Tüm handler'ları çalıştır |
| `event/unregister` | `{event}` | Event'in tüm handler'larını sil |
| `event/list` | — | Kayıtlı event'leri debug'a göster |

---

## Örnek — Handler'lara Context Geçirme

```mcfunction
# Önce context'i ayarla (handler'lar okuyabilir)
data modify storage macro:engine event_context player set value "Steve"
data modify storage macro:engine event_context reason set value "login"

# Event'i tetikle
data modify storage macro:input event set value "on_join"
function macro:event/fire with storage macro:input {}
```

## Örnek — Handler İçinde Context Okuma

```mcfunction
# mypack:handlers/on_join.mcfunction
# macro:engine event_context.player → katılan oyuncu
tellraw @a {"storage":"macro:engine","nbt":"event_context.player","interpret":false}
```

## Örnek — PvP Etkinlik Sonu

```mcfunction
# Etkinlik bitince tüm oyunculara ödül ver
data modify storage macro:input func set value "mypack:event/give_reward"
function macro:lib/for_each_player with storage macro:input {}

# Bitiş duyurusu
data modify storage macro:input title set value "ETKİNLİK BİTTİ"
data modify storage macro:input subtitle set value "Tebrikler!"
data modify storage macro:input color set value "gold"
data modify storage macro:input player set value "@a"
data modify storage macro:input fade_in set value 10
data modify storage macro:input stay set value 100
data modify storage macro:input fade_out set value 20

# 5sn sonra lobi'ye gönder
data modify storage macro:input func set value "mypack:event/send_lobby"
data modify storage macro:input delay set value 100
function macro:lib/wait with storage macro:input {}
```
