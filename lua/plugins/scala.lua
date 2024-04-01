return {
  {
    "scalameta/nvim-metals",
    opts = function(_, opts)
      local metals_config = require("metals").bare_config()
      metals_config.settings = {
        showImplicitArguments = true,
        showInferredType = true,
        enableSemanticHighlighting = true,
        testUserInterface = "Test Explorer",
        excludedPackages = {
          'akka.actor.typed.javadsl',
          'com.github.swagger.akka.javadsl'
        }
      }
      metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()
      metals_config.init_options.statusBarProvider = "on"


      return require("astrocore").extend_tbl(opts, metals_config)
    end
  }
}