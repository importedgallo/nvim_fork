local M = {}

-- M.general = {
--   n = {
--     ["+"] = {"<C-a", "Increment"},
--     ["-"] = {"<C-x", "Decrement"},
--   }
-- }

--diasble these to enable tmux-navigatior mappings
M.disabled = {
  n = {
    ["<C-h>"] = { "<C-w>h", "Window left" },
    ["<C-l>"] = { "<C-w>l", "Window right" },
    ["<C-j>"] = { "<C-w>j", "Window down" },
    ["<C-k>"] = { "<C-w>k", "Window up" },
  }
}

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
