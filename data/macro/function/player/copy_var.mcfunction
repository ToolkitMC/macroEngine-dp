# macro:player/copy_var — Copy a player variable to another player
# INPUT: macro:input { from:"<source>", to:"<target>", key:"<variable>" }

$data modify storage macro:engine players.$(to).$(key) set from storage macro:engine players.$(from).$(key)
