# ============================================
# macro:cmd/item_modify
# ============================================
# Entity'nin belirtvian slot'undaki item'a modifier uygular.
# macro:item_modifier/ altindaki JSON'lari kullanir.
#
# INPUT: macro:input { player:"<name>", slot:"<slot>", modifier:"<namespace:id>" }
#
# SLOT EXAMPLELERI:
# weapon.mainhand — Ana el
# weapon.offhand — Yardimci el
# armor.head — Kask
# armor.chest — Gogus zirhi
# armor.legs — Bacak zirhi
# armor.feet — Ayakkabi
# container.0 — Envanter slot 0 (0-35)
#
# MEVCUT MODIFIER'LAR (macro namespace):
# macro:repair_full — Hasar reset (tam tamir)
# macro:damage_random — Rastgele hasar uygula
# macro:enchant_randomly — Rastgele buyu add
# macro:enchant_with_levels_5 — 5 seviyeyle buyu add
# macro:enchant_with_levels_30— 30 seviyeyle buyu add
# macro:set_count_1 — Miktari 1 yap
# macro:set_count_64 — Miktari 64 yap
# macro:lore_add_custom — Lore satiri add (append)
# macro:lore_clear — Clear all lore
# macro:glint_add — Parlama efekti add
# macro:glint_remove — Parlama efektini remove
# macro:unbreakable — Kirilmaz yap
# macro:hide_tooltip — Tooltip'i gizle
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input slot set value "weapon.mainhand"
# data modify storage macro:input modifier set value "macro:repair_full"
# function macro:cmd/item_modify with storage macro:input {}
# ============================================

$item modify entity @a[name=$(player),limit=1] $(slot) $(modifier)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/item_modify ","color":"aqua"},{"text":"$(player)","color":"white"}]
