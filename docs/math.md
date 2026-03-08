# 🔢 Matematik — `macro:math/*`

← [README'ye Dön](../README.md)

---

## API

| Fonksiyon | Input | Output | Açıklama |
|-----------|-------|--------|---------|
| `math/sign` | `{value}` | -1 / 0 / 1 | Sayının işareti |
| `math/abs` | `{value}` | \|value\| | Mutlak değer |
| `math/clamp` | `{value, min, max}` | `[min,max]` içinde | Aralığa sıkıştır |
| `math/lerp` | `{a, b, t}` | `a+(b-a)*t/100` | Doğrusal interpolasyon (t: 0-100) |
| `math/sqrt` | `{value}` | `floor(√value)` | Tamsayı karekök (binary search, 16 iter) |
| `math/ceil_div` | `{a, b}` | `⌈a/b⌉` | Tavan bölme |
| `math/distance2d` | `{x1,z1, x2,z2}` | `floor(√(dx²+dz²))` | XZ mesafesi |

---

## Örnek — Spawn Noktasına Mesafe

```mcfunction
data modify storage macro:input x1 set value 0
data modify storage macro:input z1 set value 0
data modify storage macro:input x2 set value 30
data modify storage macro:input z2 set value 40
function macro:math/distance2d with storage macro:input {}
# output.result → 50
```

## Örnek — Sağlık Çubuğu Yüzdesi (lerp)

```mcfunction
# Oyuncunun HP'sine göre bir değeri ölçekle (0 HP=0, 20 HP=100 güç)
data modify storage macro:input a set value 0
data modify storage macro:input b set value 100
data modify storage macro:input t set value 75    # %75 HP
function macro:math/lerp with storage macro:input {}
# output.result → 75
```

## Örnek — Input Push/Pop ile Güvenli Çağrı

```mcfunction
# Bir fonksiyon içindeyiz, macro:input dolu
# math/sqrt çağırmamız gerekiyor ama input'u bozmak istemiyoruz

function macro:lib/input_push          # mevcut input'u kaydet

data modify storage macro:input value set value 144
function macro:math/sqrt with storage macro:input {}
# output.result → 12

function macro:lib/input_pop           # input'u geri yükle
# macro:input artık önceki haliyle
```
