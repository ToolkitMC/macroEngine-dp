# ============================================
# macro:cmd/item_rename
# ============================================
# Gives a dynamic name to the item in the player's specified slot.
# Asama 1: Isim + renk storage'a writeilir.
# Step 2: applied via macro:item_modifier/rename_to_custom.json
#
# ⚠️ NOT: /item modify komutu inline JSON kabul etmez — named item_modifier
# Requires the JSON fvia. For dynamic naming first
# macro:item_modifier/rename_to_custom.json'u istedigin isimle duzenle
# or use the scoreboard-NBT method below.
#
# INPUT: macro:input { player:"<name>", slot:"<slot>", modifier:"<namespace:id>" }
#
# Recommended approach for dynamic naming:
# 1. Projenin item_modifier/ altina kendi rename JSON'ini add
# 2. macro:cmd/item_modify via uygula
#
# EXAMPLE (statik modifier via):
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input slot set value "weapon.mainhand"
# data modify storage macro:input modifier set value "macro:rename_to_custom"
# function macro:cmd/item_rename with storage macro:input {}
# ============================================

$item modify entity @a[name=$(player),limit=1] $(slot) $(modifier)
