return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  lazy = false,
  config = function()
    vim.keymap.set("n", "<leader>e", ":Neotree reveal left<CR>", {})
  end,
}
