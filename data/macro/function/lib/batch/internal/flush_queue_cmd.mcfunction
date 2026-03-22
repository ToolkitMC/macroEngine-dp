# macro:lib/batch/internal/flush_queue_cmd [MACRO]
# INPUT: $(cmd), $(delay) — _bfl_cur'dan; cmd field garantilenmiş.

$data modify storage macro:engine queue append value {cmd:"$(cmd)", delay:$(delay)}
