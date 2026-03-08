# 🔁 Lib · 👤 Oyuncu · ⚙️ Komutlar · 💬 Mesajlaşma

← [README'ye Dön](../README.md)

---

## 🔁 Lib — `macro:lib/*`

| Fonksiyon | Input | Açıklama |
|-----------|-------|---------|
| `lib/for_each_player` | `{func}` | Her online oyuncu OLARAK çalıştır |
| `lib/for_each_player_at` | `{func}` | Her oyuncu olarak ve konumunda |
| `lib/repeat` | `{func, count}` | Fonksiyonu N kez çalıştır |
| `lib/wait` | `{func, delay}` | `queue_add` için kısayol alias |
| `lib/input_push` | — | `macro:input` durumunu kaydet |
| `lib/input_pop` | — | `macro:input` durumunu geri yükle |

### Örnek — Tüm Oyunculara Efekt

```mcfunction
data modify storage macro:input func set value "mypack:daily/give_bonus"
function macro:lib/for_each_player with storage macro:input {}

data modify storage macro:input func set value "mypack:loop/spawn_mob"
data modify storage macro:input count set value 5
function macro:lib/repeat with storage macro:input {}
```

---

## 👤 Oyuncu — `macro:player/*`

| Fonksiyon | Input | Açıklama |
|-----------|-------|---------|
| `player/reset` | `{player}` | Tüm veriyi sil, varsayılanlara dön ⚠️ |
| `player/list_vars` | `{player}` | Tüm değişken ve cooldown'ları göster |
| `player/add_default` | `{player, key, value}` | Yoksa varsayılan yaz |
| `player/increment` | `{player, key}` | Değeri 1 artır |
| `player/decrement` | `{player, key}` | Değeri 1 azalt |

---

## ⚙️ Komutlar — `macro:cmd/*`

| Fonksiyon | Input | Açıklama |
|-----------|-------|---------|
| `cmd/kill` | `{player}` | Öldür |
| `cmd/damage` | `{player, amount, type}` | Hasar ver |
| `cmd/heal` | `{player, amount}` | İyileştir (instant_health efekti) |
| `cmd/particle` | `{name,x,y,z,dx,dy,dz,speed,count}` | Parçacık efekti |
| `cmd/clear` | `{player}` | Envanteri temizle |
| `cmd/clear_item` | `{player, item, count}` | Belirli eşyayı kaldır |
| `cmd/tag_add` | `{player, tag}` | Entity tag ekle |
| `cmd/tag_remove` | `{player, tag}` | Entity tag kaldır |
| `cmd/scoreboard_set` | `{player, objective, value}` | Scoreboard değeri yaz |
| `cmd/scoreboard_get` | `{player, objective}` | Scoreboard değeri oku |
| `cmd/scoreboard_add` | `{player, objective, amount}` | Scoreboard değerine ekle |
| `cmd/title_times` | `{player, fade_in, stay, fade_out}` | Title animasyon süresi |
| `cmd/title_reset` | `{player}` | Title süresini sıfırla |
| `cmd/title_clear` | `{player}` | Aktif title'ı kaldır |

---

## 💬 Mesajlaşma — `macro:string/*`

| Fonksiyon | Input | Açıklama |
|-----------|-------|---------|
| `string/chat` | `{target, message, color}` | Tek oyuncuya basit mesaj |
| `string/broadcast_raw` | `{json}` | Tüm oyunculara ham JSON |
| `string/player_raw` | `{player, json}` | Tek oyuncuya ham JSON |
| `string/progress_bar` | `{player, current, max, label}` | Action bar ilerleme çubuğu |
| `string/header` | `{title, color}` | Tüm oyunculara dekoratif başlık |
