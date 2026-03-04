# ============================================
# macro:cmd/damage_typed
# ============================================
# Deals damage using a custom damage type.
# macro:damage_type/ altindaki JSON'lari kullanir.
#
# INPUT: macro:input { player:"<name>", amount:<float>, damage_type:"<namespace:id>" }
#
# MEVCUT DAMAGE TYPES (macro namespace):
# macro:magic — Buyu hasari, armor bypass, scaling yok
# macro:true_damage — Generic mesaj, scaling yok
# macro:void_custom — Void benzeri, "outOfWorld" mesaji
# macro:fire_custom — damage with fire effect
# macro:wither_custom — damage with wither effect
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input amount set value 10.0
# data modify storage macro:input damage_type set value "macro:magic"
# function macro:cmd/damage_typed with storage macro:input {}
# ============================================

$damage @a[name=$(player),limit=1] $(amount) $(damage_type)
