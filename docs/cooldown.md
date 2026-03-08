# 🕐 Cooldown — `macro:cooldown/*`

← [README'ye Dön](../README.md)

---

## API

| Fonksiyon | Input | Açıklama |
|-----------|-------|---------|
| `cooldown/set` | `{player, key, duration}` | Cooldown başlat (duration = tick) |
| `cooldown/check` | `{player, key}` | `output.result` = 1b (hazır) / 0b (aktif) |
| `cooldown/remaining` | `{player, key}` | `output.result` = kalan tick (0 = dolmuş) |
| `cooldown/clear` | `{player, key}` | Belirli cooldown'u sıfırla |
| `cooldown/clear_all` | `{player}` | Tüm cooldown'ları sıfırla |

---

## Örnek — Yetenek Cooldown

```mcfunction
# Cooldown kontrolü
data modify storage macro:input player set value "Steve"
data modify storage macro:input key set value "fireball"
function macro:cooldown/check with storage macro:input {}

execute if data storage macro:output {result:1b} run function mypack:ability/fireball_use
execute if data storage macro:output {result:0b} run function mypack:ability/fireball_busy

# Yeteneği kullandıktan sonra cooldown başlat (100 tick = 5sn)
data modify storage macro:input duration set value 100
function macro:cooldown/set with storage macro:input {}
```

## Örnek — Skill Sistemi (Dash)

```mcfunction
# Oyuncu "Dash" kullanıyor
data modify storage macro:input player set value "Steve"
data modify storage macro:input key set value "dash"
function macro:cooldown/check with storage macro:input {}

execute if data storage macro:output {result:0b} run function mypack:skill/dash_busy
execute if data storage macro:output {result:1b} run function mypack:skill/dash_use

# mypack:skill/dash_use.mcfunction
execute as @a[name=Steve,limit=1] at @s run effect give @s minecraft:speed 2 3 true
data modify storage macro:input player set value "Steve"
data modify storage macro:input key set value "dash"
data modify storage macro:input duration set value 200
function macro:cooldown/set with storage macro:input {}

# mypack:skill/dash_busy.mcfunction
data modify storage macro:input player set value "Steve"
data modify storage macro:input key set value "dash"
function macro:cooldown/remaining with storage macro:input {}
# output.result → kalan tick
```
