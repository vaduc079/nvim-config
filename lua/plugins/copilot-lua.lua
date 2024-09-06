return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "User AstroFile",
  opts = {
    suggestion = { auto_trigger = true, debounce = 150 },
    filetypes = {
      sh = function()
        if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), "^%.env.*") then
          -- disable for .env files
          return false
        end
        return true
      end,
    },
  },
}
