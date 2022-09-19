local status_ok, lspinlayhints = pcall(require, "lsp-inlayhints")
if not status_ok then
	return
end

lspinlayhints.setup()
