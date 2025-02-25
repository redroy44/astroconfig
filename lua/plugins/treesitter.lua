-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "scala",
      "nix",
      "python",
      "yaml",
      "json",
      "markdown",
      "html",
      "jsonc" ,
      "groovy",
      "http",
      "diff"
      -- add more arguments for adding more treesitter parsers
    })

    vim.treesitter.language.register('markdown', 'octo')
  end,
}
