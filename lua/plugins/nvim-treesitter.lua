return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpppdate",
  config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "lua", "c", "javascript", "html"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
  end
}
