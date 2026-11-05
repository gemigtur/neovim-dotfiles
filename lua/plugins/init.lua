return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- Rung PLC integrating
  {
    "sa1ntsinner/rung",
    lazy = false,
    config = function(plugin)
      -- Load the Neovim integraation include in the Rung repository
      vim.opt.rtp:append(plugin.dir .. "/editors/neovim")

      require("rung").setup({
        cmd = { "rung" },
        test_on_save = false,
      })
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Undo nvim 
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },

  -- Auto-close and auto-rename HTML tags
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "html",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "tsx",
      "jsx",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- Cursor always in the center of screen
  {
    "arnamak/stay-centered.nvim",
    lazy = false,
    config = function()
      require("stay-centered").setup({
        skip_filetypes = {},
        enabled = true,
        allow_scroll_move = true,
        disable_on_mouse = true,
      })
    end
  },

  -- Neovim treesitter plugin
  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "html",
        "css",
        "python",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
  },

  -- Increase nvim-tree git timeout to avoid "timed out after 400ms" errors
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        timeout = 5000,
      },
    },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
