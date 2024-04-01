return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    name = "onedark",
    config = function()
      require("onedark").setup {}
    end,
  },
  {
    "shaunsingh/nord.nvim",
    name = "nord",
    lazy = false,
    -- config = function()
    --   require("nord").setup {}
    -- end,
  },
    {
      "rebelot/kanagawa.nvim",
      name = "kanagawa",
      config = function()
        require("kanagawa").setup ({
          compile = true,             -- enable compiling the colorscheme
          undercurl = true,            -- enable undercurls
          commentStyle = { italic = true },
          functionStyle = {},
          keywordStyle = { italic = true},
          statementStyle = { bold = true },
          typeStyle = {},
          transparent = false,         -- do not set background color
          dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
          terminalColors = true,       -- define vim.g.terminal_color_{0,17}
          theme = "wave",              -- Load "wave" theme when 'background' option is not set
          background = {               -- map the value of 'background' option to a theme
              dark = "wave",           -- try "dragon" !
              light = "lotus"
          },
        })
      end,
    },
}