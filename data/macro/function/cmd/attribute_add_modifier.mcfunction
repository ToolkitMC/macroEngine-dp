# ============================================
# macro:cmd/attribute_add_modifier
# ============================================
# Playerya attribute modifier addr.
# Modifier UUID cakismasini onlemek for benzersiz id kullan.
#
# INPUT: macro:input {
# player:"<name>",
# attribute:"<attribute_id>",
# id:"<modifier_id>",
# amount:<float>,
# operation:"<add_value|add_multiplied_base|add_multiplied_total>"
# }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input attribute set value "minecraft:generic.movement_speed"
# data modify storage macro:input id set value "macro:speed_boost"
# data modify storage macro:input amount set value 0.1
# data modify storage macro:input operation set value "add_value"
# function macro:cmd/attribute_add_modifier with storage macro:input {}
# ============================================

$attribute @a[name=$(player),limit=1] $(attribute) modifier add $(id) $(amount) $(operation)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/attribute_add_modifier ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(id)","color":"aqua"}]
