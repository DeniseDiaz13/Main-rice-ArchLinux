lvim.plugins = require("user.plugins")
require("user.mappings")
lvim.builtin.illuminate.active = false


local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.volar.setup {
  capabilities = capabilities,
  filetypes = { "vue" },
}
