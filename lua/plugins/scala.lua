return {
  {
    "scalameta/nvim-metals",
    opts = function()
      local metals, astrocore = require "metals", require "astrocore"
      local astrolsp_avail, astrolsp = pcall(require, "astrolsp")
      local user_config = astrolsp_avail and astrolsp.lsp_opts "metals" or {}

      user_config.settings = {
        enableSemanticHighlighting = true,
        autoImportBuild = "all",
        inlayHints = {
          hintsInPatternMatch = { enable = false },
          implicitArguments = { enable = false },
          implicitConversions = { enable = false },
          inferredTypes = { enable = true },
          typeParameters = { enable = true },
        },
        testUserInterface = "Test Explorer",
        excludedPackages = {
          'akka.actor.typed.javadsl',
          'akka.actor.javadsl',
          'akka.stream.javadsl',
          'com.github.swagger.akka.javadsl'
        }
      }
      -- user_config.capabilities = require("cmp_nvim_lsp").default_capabilities()
      user_config.capabilities = require('blink.cmp').get_lsp_capabilities()
      -- user_config.init_options.statusBarProvider = "on"

      if astrocore.is_available "nvim-dap" then
        user_config.on_attach = astrocore.patch_func(user_config.on_attach, function(orig, ...)
          orig(...)
          metals.setup_dap()
        end)
      end
      return astrocore.extend_tbl(metals.bare_config(), user_config)
    end,
  }
}