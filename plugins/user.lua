return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() # something here to test Gitsigns preview inline
  --     require("lsp_signature").setup()
  --   end,
  -- },
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {},
      event = "User AstroFile",
    },
    {
      "karb94/neoscroll.nvim",
      opts = {},
      event = "User AstroFile",
    },
    {
      "kylechui/nvim-surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
      end,
    },
    {
      'linux-cultist/venv-selector.nvim',
      dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
      opts = {},
      event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
      keys = {
        -- Keymap to open VenvSelector to pick a venv.
        { '<leader>vs', '<cmd>VenvSelect<cr>' },
        -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
        { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
      },
    },
    {
      "nvim-neotest/neotest-python",
      dependencies = {
        "nvim-neotest/neotest",
      },
      event = "VeryLazy",
    },
    {
      "nvim-neotest/neotest",
      dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter"
      },
      event = "VeryLazy",
      config = function()
        require("neotest").setup({
          adapters = {
            require("neotest-python")
          }
        })
      end,
      keys = {
        { "dm", "<cmd>lua require('neotest').run.run()<cr>", desc = "Run single test function / method" },
        { "dM", "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", desc = "Run single test function / method DAP" },
        { "df", "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", desc = "Run test class" },
        { "dF", "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", desc = "Run test class DAP" },
        { "dS", "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Show test summary" }, 
      },
    },
    {
      "ggandor/leap.nvim",
      config = function()
        require("leap").add_default_mappings()
      end,
      lazy = false,
    },
    {
      'stevearc/dressing.nvim',
      opts = {},
    },
    {
      "LintaoAmons/bookmarks.nvim",
      dependencies = {
        "stevearc/dressing.nvim"
      },
      keys = {
        { "mm", "<cmd>BookmarksMark<cr>", desc = "Mark current line into active BookmarkList."},
        { "mo", "<cmd>BookmarksGoto<cr>", desc = "Go to bookmark at current active BookmarkList."},
        { "ma", "<cmd>BookmarksCommands<cr>", desc = "Find and trigger a bookmark command."},
        { "mg", "<cmd>BookmarksGotoRecent<cr>", desc = "Go to latest visited/created Bookmark."},
      },
    },
    {
      "utilyre/barbecue.nvim",
      name = "barbecue",
      version = "*",
      dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
      },
      opts = {
        -- configurations go here
      },
    },
}
