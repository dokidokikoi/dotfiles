return {
  "TobinPalmer/rayso.nvim",
  cmd = { "Rayso" },
  config = function()
    require("rayso").setup({
      open_cmd = "chrome",
      options = {
        logging_path = "/Users/doki/Documents/Rayso/",
        logging_file = "rayso",
        logging_enabled = true,
        theme = "midnight",
      },
    })
  end,
  keys = {
    {
      mode = { "n", "v" },
      "<leader>rs",
      function()
        require("lib.create").create_snippet()
      end,
      desc = "Create code snipper image",
    },
  },
}
