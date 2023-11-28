-- https://github.com/s1n7ax/nvim-window-picker

return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup({
        hint = "floating-big-letter",
        selection_chars = "QWEASDZXC",
        floating_big_letter = {
          font = "ansi-shadow", -- ansi-shadow |
        },
        show_prompt = true,
        prompt_message = "Pick window: ",
      })
    end,
  },
}
