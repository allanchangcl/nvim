local status_ok, rusttools = pcall(require, "rust-tools")
if not status_ok then
	return
end

local rt = {
	server = {
		settings = {
			on_attach = function(_, bufnr)
				-- Hover actions
				vim.keymap.set("n", "<C-space>", rusttools.hover_actions.hover_actions, { buffer = bufnr })
			end,
			["rust-analyzer"] = {
				checkOnSave = {
					command = "clippy",
				},
			},
		},
	},
}
rusttools.setup(rt)
