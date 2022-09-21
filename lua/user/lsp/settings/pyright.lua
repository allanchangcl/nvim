local bin_name = 'pyright-langserver'
local cmd = { bin_name, '--stdio' }

return {
--   cmd = { "py" },
  cmd = cmd,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        diagnosticMode = "workspace",
        inlayHints = {
          variableTypes = true,
          functionReturnTypes = true,
        },
      },
    },
  },
}