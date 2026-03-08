# 👥 Takım & ⚙️ Config

← [README'ye Dön](../README.md)

---

## 👥 Takım — `macro:team/*`

| Fonksiyon | Input | Açıklama |
|-----------|-------|---------|
| `team/create` | `{team}` | Takım oluştur |
| `team/delete` | `{team}` | Takımı sil |
| `team/add` | `{team, player}` | Oyuncuyu takıma ekle |
| `team/remove` | `{player}` | Oyuncuyu takımdan çıkar |
| `team/has` | `{team, player}` | `output.result` = 1b/0b |
| `team/set_color` | `{team, color}` | Takım rengini ayarla |
| `team/set_friendly_fire` | `{team, value}` | "true" / "false" |
| `team/count` | `{team}` | Online üye sayısı |
| `team/list` | — | Debug'a takım listesi |

### Örnek — PvP Harita Takım Kurulumu

```mcfunction
# Takımları kur
data modify storage macro:input team set value "kirmizi"
function macro:team/create with storage macro:input {}
data modify storage macro:input team set value "mavi"
function macro:team/create with storage macro:input {}

# Renk ata
data modify storage macro:input team set value "kirmizi"
data modify storage macro:input color set value "red"
function macro:team/set_color with storage macro:input {}

# Friendly fire kapat
data modify storage macro:input team set value "kirmizi"
data modify storage macro:input value set value "false"
function macro:team/set_friendly_fire with storage macro:input {}

# Oyuncu ekle
data modify storage macro:input team set value "kirmizi"
data modify storage macro:input player set value "Steve"
function macro:team/add with storage macro:input {}

# Takımda mı kontrol et
data modify storage macro:input team set value "kirmizi"
data modify storage macro:input player set value "Steve"
function macro:team/has with storage macro:input {}
execute if data storage macro:output {result:1b} run say Steve kirmizi takımda!
```

---

## ⚙️ Config — `macro:config/*`

| Fonksiyon | Input | Açıklama |
|-----------|-------|---------|
| `config/set` | `{key, value}` | String değer yaz |
| `config/set_int` | `{key, value}` | Tam sayı değer yaz |
| `config/set_default` | `{key, value}` | Yoksa yaz (`output.result` = 1b yeni / 0b vardı) |
| `config/get` | `{key}` | `output.result` = değer (yoksa "") |
| `config/has` | `{key}` | `output.result` = 1b/0b |
| `config/delete` | `{key}` | Key'i sil |
| `config/list` | — | Debug'a tüm config |
| `config/reset` | — | Tüm config'i sil ⚠️ |

### Örnek — Sunucu Başlangıcında Varsayılan Config

```mcfunction
# mypack:load.mcfunction — varsayılanları yükle
data modify storage macro:input key   set value "server_name"
data modify storage macro:input value set value "Benim Sunucum"
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key   set value "max_party_size"
data modify storage macro:input value set value 4
function macro:config/set_int with storage macro:input {}   # int versiyonu kullan!

# Çalışma zamanında oku
data modify storage macro:input key set value "max_party_size"
function macro:config/get with storage macro:input {}
# output.result → 4
```
