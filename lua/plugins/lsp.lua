local keyMapper = require('utils.keyMapper').mapKey

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { "lua_ls", "gopls", "clangd", "ast_grep" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.ast_grep.setup({})
      lspconfig.clangd.setup({})
      lspconfig.gopls.setup({})
      lspconfig.dartls.setup({
        -- 자동완성 사용 시 capabilities 설정 필요
        -- capabilities = require('cmp_nvim_lsp').default_capabilities(),
        -- Dart/Flutter 프로젝트 관련 추가 설정이 필요하면 여기에 추가
        -- 예: settings = { flutter = { ... } } 등 (보통 기본값으로 잘 동작)
      })


      keyMapper('K', vim.lsp.buf.hover)
      keyMapper('gd', vim.lsp.buf.definition)
      keyMapper('<leader>ca', vim.lsp.buf.code_action)
    end
  },
}
