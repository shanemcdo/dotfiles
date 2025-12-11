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
}
