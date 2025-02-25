-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin",      lazy = false },
  { import = "astrocommunity.colorscheme.tokyonight-nvim", lazy = false },
  { import = "astrocommunity.search.nvim-spectre" },
  -- { import = "astrocommunity.completion.copilot-lua" },
  -- { import = "astrocommunity.editing-support.auto-save-nvim" },
  -- { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.git.octo-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.scala" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.editing-support.copilotchat-nvim" },
  { import = "astrocommunity.completion.blink-cmp" },
}
