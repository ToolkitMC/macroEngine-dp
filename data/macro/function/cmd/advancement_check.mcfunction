# ============================================
# macro:cmd/advancement_check
# ============================================
# Playernun advancement'a sahip olup olmadigini check eder.
# OUTPUT: macro:output { result: 1b/0b }
#
# INPUT: macro:input { player:"<name>", advancement:"<namespace:id>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input advancement set value "macro:template/goal"
# function macro:cmd/advancement_check with storage macro:input {}
# # → macro:output { result: 1b } (if present)
# ============================================

data modify storage macro:output result set value 0b
$execute if entity @a[name=$(player),limit=1,advancements={$(advancement)=true}] run data modify storage macro:output result set value 1b
