return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      integrations = {
        telescope = {
          style = "nvchad",
        },
      },
    })
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
