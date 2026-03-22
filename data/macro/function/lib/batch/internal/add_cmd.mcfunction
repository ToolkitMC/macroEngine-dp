# macro:lib/batch/internal/add_cmd [MACRO]
# INPUT: $(id), $(cmd)
# cmd field garantilenmiş olarak çağrılır.

$data modify storage macro:engine batches.$(id).items append value {cmd:"$(cmd)"}
