return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpppdate",
  config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "lua", "c", "cpp", "javascript", "html", "dart", "typescript"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
  end
}
