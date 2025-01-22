return {
  "rmagatti/goto-preview",
  event = "BufEnter",
  config = true,
  keys = {
    {
      "ghd",
      function()
        require("goto-preview").goto_preview_definition()
      end,
      desc = "goto preview definition",
    },
    {
      "ght",
      function()
        require("goto-preview").goto_preview_type_definition()
      end,
      desc = "goto preview type defintion",
    },
    {
      "ghi",
      function()
        require("goto-preview").goto_preview_implementation()
      end,
      desc = "goto preview implementation",
    },
    {
      "ghD",
      function()
        require("goto-preview").goto_preview_declaration()
      end,
      desc = "goto preview declaration",
    },
    {
      "gH",
      function()
        require("goto-preview").close_all_win()
      end,
      desc = "close all win",
    },
    {
      "ghr",
      function()
        require("goto-preview").goto_preview_references()
      end,
      desc = "goto preview references",
    },
  },
}
