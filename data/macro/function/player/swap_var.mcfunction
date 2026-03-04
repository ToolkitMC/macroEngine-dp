# macro:player/swap_var — Swap variable values between two players
# INPUT: macro:input { player_a:"<name>", player_b:"<name>", key:"<variable>" }

# Saand to temporary buffer
$data modify storage macro:engine _swap.tmp set from storage macro:engine players.$(player_a).$(key)
# B → A
$data modify storage macro:engine players.$(player_a).$(key) set from storage macro:engine players.$(player_b).$(key)
# Backup → B
$data modify storage macro:engine players.$(player_b).$(key) set from storage macro:engine _swap.tmp
data remove storage macro:engine _swap
