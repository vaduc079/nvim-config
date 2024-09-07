return {
  "princejoogie/dir-telescope.nvim",
  lazy = true,
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = assert(opts.mappings)
        local prefix = "<Leader>f"

        maps.n[prefix .. "D"] = { "<cmd>Telescope dir live_grep<CR>", desc = "Find words in dir" }
        maps.n[prefix .. "d"] = { "<cmd>Telescope dir find_files<CR>", desc = "Find files in dir" }
      end,
    },
  },
  specs = {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "princejoogie/dir-telescope.nvim" },
      opts = function(_, opts)
        require("telescope").load_extension "dir"
        if not opts.extensions then opts.extensions = {} end
        opts.extensions.dir = {
          hidden = true,
          no_ignore = true,
          show_preview = true,
          follow_symlinks = false,
        }
      end,
    },
  },
}
