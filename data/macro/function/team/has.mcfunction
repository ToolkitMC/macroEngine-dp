# ============================================
# macro:team/has
# ============================================
# Player belirtvian takimda mi check eder.
# INPUT: macro:input { team:"<name>", player:"<player>" }
# OUTPUT: macro:output { result: 1b (yes) | 0b (no) }
# ============================================

data modify storage macro:output result set value 0b
$execute if entity @a[name=$(player),team=$(team)] run data modify storage macro:output result set value 1b
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"team/has ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(team)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
