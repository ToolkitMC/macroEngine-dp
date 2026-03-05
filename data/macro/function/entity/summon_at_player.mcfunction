# ============================================
# macro:entity/summon_at_player
# ============================================
# Belirtilen oyuncunun tam konumunda entity doğurur.
# macro:cmd/summon'dan farki: koordinat vermek yerine
# oyuncu adi yazilir; entity oyuncunun @ konumunda cikar.
#
# Kullanim senaryolari:
# - Oyuncunun uzerine düsman spawnla
# - Oyuncunun konumunda efekt entitysi olustur
# - Player'in tam yanina NPC cagir
#
# INPUT: macro:input
# player : <string> — Oyuncu adi
# entity : <string> — Entity type (minecraft:zombie vb.)
# nbt : <snbt> — Entity NBT ({} bos bicimde)
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input entity set value "minecraft:lightning_bolt"
# data modify storage macro:input nbt set value "{}"
# function macro:entity/summon_at_player with storage macro:input {}
# ============================================

$execute as @a[name=$(player),limit=1] at @s run summon $(entity) ~ ~ ~ $(nbt)
