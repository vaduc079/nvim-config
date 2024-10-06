-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- LANGUAGES --
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.docker" },
  -- { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.sql" },

  -- EDITOR --
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.quickfix.nvim-bqf" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  --COMPLETION
  { import = "astrocommunity.completion.avante-nvim" },
  -- dependencies of avante=-nvim
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.media.img-clip-nvim" },

  -- MOTION --
  -- { import = "astrocommunity.motion.mini-ai" },
  -- { import = "astrocommunity.motion.mini-move" },

  -- DIAGNOSTICS
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- PROJECT --
  -- { import = "astrocommunity.project.projectmgr-nvim" },
  -- { import = "astrocommunity.file-explorer.telescope-file-browser-nvim" },

  -- GIT --
  { import = "astrocommunity.git.diffview-nvim" }, -- Maybe just install these plugins by yourself?
  -- { import = "astrocommunity.git.neogit" },

  -- COLORSCHEME --
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
}
