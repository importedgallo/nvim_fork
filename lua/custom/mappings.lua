local M = {}

-- M.inc_dec= {
--   n = {
--     ["+"] = {"<C-a", "Increment"},
--     ["-"] = {"<C-x", "Decrement"},
--   }
-- }
-- this is to disable default mappings found in core/mappings.lua
M.disabled = {
  n = {
--diasble these to enable tmux-navigatior mappings
    ["<C-h>"] = { "<C-w>h", "Window left" },
    ["<C-l>"] = { "<C-w>l", "Window right" },
    ["<C-j>"] = { "<C-w>j", "Window down" },
    ["<C-k>"] = { "<C-w>k", "Window up" },
    ["<C-s>"] = { "<cmd> w <CR>", "Save file" },
  }
}

-- M.MarkdownPreview = {
--   plugin = true,
--   n = {
--     ["<leader><C-s>"] = {"<cmd> MarkdownPreview <CR>"}
--   }
-- }
--
-- M.MarkdownPreviewStop= {
--   plugin = true,
--   n = {
--     ["<leader><C-q>"] = {"<cmd> MarkdownPreviewStop <CR>"}
--   }
-- }
--
-- M.MarkdownPreviewToggle = {
--   plugin = true,
--   n = {
--     ["<leader><C-p>"] = {"<cmd> MarkdownPreviewToggle <CR>"}
--   }
-- }

M.dap = {
  plugin = true,
  n = {
    -- debug breakpoint
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    -- debug python run
  ["<leader>dpr"] = {
      function()
      require('dap-python').test_method()
      end
    }
  }
}

return M
