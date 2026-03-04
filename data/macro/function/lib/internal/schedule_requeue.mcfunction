# schedules.$(key) compound'undan {func, interval} alir and add to queuer
$data modify storage macro:engine queue append value {func:"$(func)", delay:$(interval)}
