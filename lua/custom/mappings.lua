local M = {

}
-- M.general = {
--   n = {
--     ["+"] = {"<C-a", "Increment"},
--     ["-"] = {"<C-x", "Decrement"},
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
