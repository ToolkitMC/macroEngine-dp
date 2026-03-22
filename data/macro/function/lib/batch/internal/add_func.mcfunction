# macro:lib/batch/internal/add_func [MACRO]
# INPUT: $(id), $(func)
# func field garantilenmiş olarak çağrılır.

$data modify storage macro:engine batches.$(id).items append value {func:"$(func)"}
