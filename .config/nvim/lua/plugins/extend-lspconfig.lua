return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "coder3101/protols",
    config = function()
      require("lspconfig").protols.setup()
    end,
  },
}
