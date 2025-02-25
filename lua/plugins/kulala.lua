return { 'mistweaverco/kulala.nvim', 
  ft = "http",
  config = function()
    local utils = require("astrocore")
    local prefix = "<leader>r"
    local icon = vim.g.icons_enabled and " " or ""
    utils.set_mappings {
        n = {
          [prefix] = { name = icon .. "Kulala" },
          [prefix .. "r"] = { function() require('kulala').run() end, desc = "Run HTTP Request" },
          [prefix .. "a"] = { function() require('kulala').run_all() end, desc = "Run All HTTP Requests" },
          [prefix .. "i"] = { function() require('kulala').inspect() end, desc = "Inspect HTTP Request" },
          [prefix .. "t"] = { function() require('kulala').toggle_view() end, desc = "Toggle View" },
          ["<leader>fr"] = { function() require('kulala').search() end, desc = "Kulala Search" },
        --   ["<leader>[r"] = { function() require('kulala').jump_prev() end, desc = "Previous HTTP Request" },
        --   ["<leader>]r"] = { function() require('kulala').jump_next() end, desc = "Next HTTP Request" },
      }
    }
  end,
  opts = {
    default_view = "headers_body",
    show_icons = "above_request",
  }
}