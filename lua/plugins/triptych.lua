return {
  "simonmclean/triptych.nvim",
  config = function()
    require("triptych").setup({
      -- Default configuration options
      -- See https://github.com/simonmclean/triptych.nvim#configuration for more options
      pane_focus_cyclical = true,
    })

    -- Example keybindings (you can customize these)
    vim.keymap.set("n", "<C-h>", ":TriptychFocusLeft<CR>", { desc = "Focus left pane" })
    vim.keymap.set("n", "<C-l>", ":TriptychFocusRight<CR>", { desc = "Focus right pane" })
    vim.keymap.set("n", "<C-j>", ":TriptychFocusDown<CR>", { desc = "Focus down pane" })
    vim.keymap.set("n", "<C-k>", ":TriptychFocusUp<CR>", { desc = "Focus up pane" })
  end,
}
