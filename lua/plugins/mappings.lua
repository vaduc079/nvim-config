local sections = {
  t = { desc = "󱂬 Tabs" },
  -- T = { desc = " Terminal" },
}

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- navigate buffer tabs with `H` and `L`
          L = {
            function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
            desc = "Next buffer",
          },
          H = {
            function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
            desc = "Previous buffer",
          },

          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

          -- Move text up and down
          ["<A-j>"] = { ":m .+1<CR>==", desc = "Move text down" },
          ["<A-k>"] = { ":m .-2<CR>==", desc = "Move text up" },

          -- TABS --
          ["<Leader>t"] = sections.t,
          ["<Leader>ta"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>tc"] = { "<cmd>tabclose<cr>", desc = "Close tab" },
          ["<Leader>tn"] = { "<cmd>tabnext<cr>", desc = "Next tab" },
          ["<Leader>tp"] = { "<cmd>tabprevious<cr>", desc = "Previous tab" },
          ["<Leader>tv"] = false,
          ["<Leader>tl"] = false,
          ["<Leader>tf"] = false,
          ["<Leader>th"] = false,
          -- Diffview
          ["<Leader>td"] = { "<cmd>DiffviewOpen<cr>", desc = "Diffview" },
          ["<Leader>tdo"] = { "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
          ["<Leader>tdh"] = { "<cmd>DiffviewFileHistory<cr>", desc = "Open current branch Git History" },
          ["<Leader>tdH"] = { "<cmd>DiffviewFileHistory %<cr>", desc = "Open current file Git History" },
          ["<Leader>tdr"] = { "<cmd>DiffviewRefresh<cr>", desc = "Refresh Diffview" },

          -- GIT --
          ["<Leader>gB"] = { "<cmd>:GitBlameToggle<cr>", desc = "Toggle inline blame" },

          -- TOGGLERTERM --
          ["[<F7>]"] = { "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Toggle terminal" },
          ["<C-'>"] = { "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Toggle terminal" },
          ["2<C-'>"] = { "<cmd>2ToggleTerm direction=horizontal<cr>", desc = "Open second terminals" },
          ["3<C-'>"] = { "<cmd>3ToggleTerm direction=horizontal<cr>", desc = "Open third terminals" },
          ["4<C-'>"] = { "<cmd>4ToggleTerm direction=horizontal<cr>", desc = "Open fourth terminals" },

          -- PROJECTS --
          ["<Leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find projects" },

          -- Trouble --
          ["<Leader>x"] = { desc = "Trouble" },
          ["<Leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Toggle document diagnostics" },
          ["<Leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Toggle workspace diagnostics" },
          ["<Leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Toggle quickfix" },
          -- TroubleToggle lsp_*
          -- TroubleToggle loclist
          -- TroubleToggle telescope

          ["<Leader>n"] = false,
        },
        v = {
          -- Don't copy highlighted text when pasting
          p = { '"_dp' },

          -- Move text up and down
          ["<A-j>"] = { ":m .+1<CR>==", desc = "Move text down" },
          ["<A-k>"] = { ":m .-2<CR>==", desc = "Move text up" },
        },
        x = {
          -- Move text up and down
          ["<A-j>"] = { ":move '>+1<CR>gv-gv", desc = "Move text down" },
          ["<A-k>"] = { ":move '<-2<CR>gv-gv", desc = "Move text up" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
          -- TOGGLERTERM --
          -- Leave TERMINAL mode
          -- ["<esc>"] = { "<C-\\><C-n>" },
          ["2<C-'>"] = { "<cmd>2ToggleTerm direction=horizontal<cr>", desc = "Open second terminals" },
          ["3<C-'>"] = { "<cmd>3ToggleTerm direction=horizontal<cr>", desc = "Open third terminals" },
          ["4<C-'>"] = { "<cmd>4ToggleTerm direction=horizontal<cr>", desc = "Open fourth terminals" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
