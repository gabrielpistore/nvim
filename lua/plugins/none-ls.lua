return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Completion
        null_ls.builtins.completion.spell,

        -- Formatting
        null_ls.builtins.formatting.stylua.with({
          condition = function(utils)
            return utils.root_has_file { "stylua.toml" }
          end
        }),
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.djlint.with({
          command = "djlint",
          args = { "--reformat", "--indent", "2", "-" },
        }),
        null_ls.builtins.formatting.isort,

        -- Diagnostics
        require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.diagnostics.djlint,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
