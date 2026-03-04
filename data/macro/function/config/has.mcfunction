# ============================================
# macro:config/has
# ============================================
# Belirtvian config key'i var mi check eder.
# INPUT: macro:input { key:"<key>" }
# OUTPUT: macro:output { result: 1b (var) | 0b (yok) }
# ============================================

data modify storage macro:output result set value 0b
$execute if data storage macro:engine config.$(key) run data modify storage macro:output result set value 1b
