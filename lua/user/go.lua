local status_ok, golang = pcall(require, "go")
if not status_ok then
	return
end

-- require('go').setup()
golang.setup()