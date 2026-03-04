# macro:player/online_check — Is the player currently online?
# INPUT: macro:input { player:"<playerName>" }
# OUTPUT: macro:output { result: 1b (online) or 0b (offline) }

data modify storage macro:output result set value 0b
$execute if entity @a[name=$(player),limit=1] run data modify storage macro:output result set value 1b
