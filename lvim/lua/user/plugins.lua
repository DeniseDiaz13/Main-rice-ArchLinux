return {
  { "folke/tokyonight.nvim" },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup {
        keywords = {
          TODO    = { icon = " ", color = "info" },
          FIX     = { icon = " ", color = "error" },
          NOTE    = { icon = " ", color = "hint" },
          WARNING = { icon = " ", color = "warning" },
        },
      }
    end,
  },
  { "nvim-telescope/telescope.nvim", lazy = false, dependencies = { "nvim-lua/plenary.nvim" } },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup {
        size = 20,
        open_mapping = [[<leader>t]],
        shade_terminals = true,
        direction = "horizontal",
      }
    end,
  },
  { "folke/persistence.nvim", event = "BufReadPre", opts = { "buffers", "curdir" } },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup {
        filetypes = { "*" },
        user_default_options = {
          RGB      = true,
          RRGGBB   = true,
          names    = true,
          RRGGBBAA = true,
          rgb_fn   = true,
          hsl_fn   = true,
          css      = true,
          css_fn   = true,
        },
      }
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "│" },
      scope = { enabled = false },
      exclude = { filetypes = { "javascript", "typescript", "tsx" } },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = {
          "lua", "vim", "bash", "python", "html", "css", "json", "markdown",
        },
        highlight = { enable = true },
        indent = { enable = false },
      }
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
  },
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup {
        formatters_by_ft = {
          lua        = { "stylua" },
          python     = { "black" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          html       = { "prettier" },
          css        = { "prettier" },
          json       = { "prettier" },
        },
        format_on_save = {
          timeout_ms = 3000,
          lsp_fallback = true,
        },
      }
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup {}
      lspconfig.tsserver.setup {}
      lspconfig.pyright.setup {}
      lspconfig.html.setup {
        capabilities = capabilities,
      }
    end,
  },
  { "mattn/emmet-vim" }
}
