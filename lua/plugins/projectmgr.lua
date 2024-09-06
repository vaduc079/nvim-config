return {
  "charludo/projectmgr.nvim",
  lazy = false, -- important!
  opts = {
    session = { enabled = false, file = "Session.vim" },
  },
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>P"] = { "<Cmd>ProjectMgr<CR>", desc = "Open ProjectMgr panel" },
          },
        },
      },
    },
  },
}
