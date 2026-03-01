-- SAVE FILE
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"

-- FILE EXPLORER
lvim.keys.normal_mode["<leader>e"] = ":NvimTreeToggle<CR>"

-- TERMINAL
lvim.keys.normal_mode["<leader>t"] = ":ToggleTerm<CR>"

-- PERSISTENCE SESSION
lvim.keys.normal_mode["<leader>ssl"] = function()
  require("persistence").load({ last = true })
end

-- CHANGE TABS
lvim.keys.normal_mode["gt"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gT"] = ":BufferLineCyclePrev<CR>"
