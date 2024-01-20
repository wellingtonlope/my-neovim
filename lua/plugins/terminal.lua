return {
  "akinsho/toggleterm.nvim",
  config = function()
    local toggleterm = require("toggleterm")
    toggleterm.setup({
      open_mappings = [[<c-\>]],
      insert_mappings = true,
      terminal_mappings = true,
    })

    vim.keymap.set("n", "<leader>ot", ":ToggleTerm<CR>", {})
    vim.keymap.set("t", "<leader>ot", '<Cmd>exe v:count1 . "ToggleTerm"<CR>', {})
  end,
}
