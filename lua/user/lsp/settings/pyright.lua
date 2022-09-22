local util = require("lspconfig.util")

local bin_name = "pyright-langserver"
local cmd = { bin_name, "--stdio" }

local root_files = {
	"pyproject.toml",
	"setup.py",
	"setup.cfg",
	"requirements.txt",
	"Pipfile",
	"pyrightconfig.json",
}

return {
	default_config = {
		cmd = cmd,
		filetypes = { "python" },
		root_dir = util.root_pattern(unpack(root_files)),
		single_file_support = true,
		settings = {
			python = {
				analysis = {
					autoSearchPaths = true,
					useLibraryCodeForTypes = true,
					diagnosticMode = "workspace",
				},
			},
		},
	},
	docs = {
		description = [[
https://github.com/microsoft/pyright

`pyright`, a static type checker and language server for python
]],
	},
}
