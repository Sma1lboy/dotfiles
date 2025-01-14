vim.g.mapleader = " "
local keymap = vim.keymap
local wk = require("which-key")
keymap.set("n", "<c-a>", "ggVG")

keymap.set({ "n", "x" }, "<leader>p", '"0p')

wk.register({

  q = { "<cmd>q<cr>", "Quit" },

  w = { "<cmd>w<cr>", "Update" },

  x = { "<cmd>x<cr>", "Save and Quit" },

  -- zen Snacks.zen()
  Z = { "<cmd>lua Snacks.zen()<cr>", "Zen" },
}, { prefix = "<leader>" })

keymap.set("n", "j", [[v:count?'j':'gj']], { noremap = true, expr = true })
keymap.set("n", "k", [[v:count?'k':'gk']], { noremap = true, expr = true })

-- keymap set for copilot
vim.keymap.set("i", "<C-l>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
keymap.set("i", "<S-Tab>", "<C-d>")
keymap.set("n", "<S-Tab>", "<<_")
keymap.set("n", "<Tab>", ">>_")
keymap.set("v", "<Tab>", ">gv")
keymap.set("v", "<S-Tab>", "<gv")

local toggle_render_markdown = function()
  require("render-markdown").toggle()
end

wk.register({
  U = { toggle_render_markdown, "Toggle Render Markdwn" },
}, { prefix = "<leader>" })
