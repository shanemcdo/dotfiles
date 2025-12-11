return {
  -- update telescope keymapping
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>F",
        -- stylua: ignore
        function() require("telescope.builtin").git_files() end,
        desc = "Find Git Files",
      },
      {
        "<leader>b",
        -- stylua: ignore
        function() require("telescope.builtin").buffers() end,
        desc = "Find Buffers",
      },
      {
        "<leader>bb",
        -- stylua: ignore
        function() require("telescope.builtin").buffers() end,
        desc = "Find Buffers",
      },
    },
  },
  -- disable flash
  { "folke/flash.nvim", enabled = false },
  -- update snacks (file sidebar) keymapping
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>t", "<leader>fe", desc = "Explorer Snacks", remap = true },
    },
  },
  {
    "numToStr/Comment.nvim",
    -- No luck moved to keymaps.lua
    -- keys = { { "<leader><space>", "gc", desc = "Comment Out", remap = true } },
  },
  -- disable bufferline
  { "akinsho/bufferline.nvim", enabled = false },
  -- disable persistence
  { "folke/persistence.nvim", enabled = false },
  -- enable vim-surround for "cs" keybinds
  { "tpope/vim-surround" },
}
