# macro:lib/batch/internal/flush_queue_func [MACRO]
# INPUT: $(func), $(delay) — _bfl_cur'dan; func field garantilenmiş.

$data modify storage macro:engine queue append value {func:"$(func)", delay:$(delay)}
