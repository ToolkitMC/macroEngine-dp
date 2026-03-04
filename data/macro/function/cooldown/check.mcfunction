# ============================================
# macro:cooldown/check
# ============================================
# Is cooldown expired (is it ready) check eder.
# INPUT: macro:input { player:"<name>", key:"<cooldown>" }
# OUTPUT: macro:output { result: 1b (ready) / 0b (active) }
# ============================================

data modify storage macro:output result set value 1b

# No recordssa ready (1b zaten set)
$execute unless data storage macro:engine cooldowns.$(player).$(key) run return 0

# Read expiry, compare with current epoch
$execute store result score $cd_exp macro.tmp run data get storage macro:engine cooldowns.$(player).$(key)
execute store result score $cd_now macro.tmp run scoreboard players get $epoch macro.time

# epoch >= expiry → ready (1b), epoch < expiry → actiand (0b)
execute if score $cd_now macro.tmp < $cd_exp macro.tmp run data modify storage macro:output result set value 0b
