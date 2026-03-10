# macro:cmd/summon — Varlik cagir
# INPUT: macro:input { entity:"<entity_id>", x:<float>, y:<float>, z:<float>, nbt:"{}" }
# EXAMPLE: entity:"minecraft:zombie", x:10, y:64, z:10, nbt:"{}"

$summon $(entity) $(x) $(y) $(z) $(nbt)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/summon ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(entity)","color":"aqua"}]
