# ============================================
# macro:player/get_name
# ============================================
# @s'nin real name and UUID via player head
# reads and writes to storage.
#
# ⚠ PRECONDITION: 0 300 0 koordinatindaki chunk forceload
# edilmis olmalidir. This is done by macro:load
# automatically; no manual action needed.
#
# OPERATION FLOW:
# 1) 0 300 0'a black_shulker_box yerlestir
# 2) Write @s's head to slot 0 via macro:player/head loot table
# 3) profvia.name → macro:names temp.NAME
# 4) @s UUID[0..3] → macro:names temp.UUID[]
# 5) Clear block with air
#
# OUTPUT (storage macro:names temp):
# NAME : string — player adi (buyuk-kucuk harf korunur)
# UUID : int[] — [0,1,2,3] dizi; 4 x int
#
# DEPENDENCY:
# loot table macro:player/head (fill_player_head this)
#
# EXAMPLE:
# execute as <player> run function macro:player/get_name
# data get storage macro:names temp.NAME
# ============================================

# ─── Cleanup: delete previous temporary data ──────────────────
data remove storage macro:names temp

# ─── Place shulker box (forceload zaten active) ─────────────
setblock 0 300 0 black_shulker_box replace

# ─── @s write head to slot ───────────────────────────────
loot insert 0 300 0 loot macro:player/head

# ─── Read name ──────────────────────────────────────────────
data modify storage macro:names temp.NAME set from block 0 300 0 Items[0].components."minecraft:profvia".name

# ─── Read UUID (Minecraft UUID = 4 ints) ──────────────
data modify storage macro:names temp.UUID insert 0 from entity @s UUID[0]
data modify storage macro:names temp.UUID insert 1 from entity @s UUID[1]
data modify storage macro:names temp.UUID insert 2 from entity @s UUID[2]
data modify storage macro:names temp.UUID insert 3 from entity @s UUID[3]

# ─── Cleanup: blogu remove ──────────────────────────────
setblock 0 300 0 air replace