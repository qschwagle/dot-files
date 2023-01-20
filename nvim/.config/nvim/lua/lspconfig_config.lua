local lspconfig = require 'lspconfig'

lspconfig.ccls.setup {
  init_options = {
    compilationDatabaseDirectory = "build"
    index = {
      threads = 0
    }
  }
}

-- go language server
lspconfig.gopls.setup {}
-- clojure language server
lspconfig.clojure_lsp.setup {}
-- csharp language server
lspconfig.csharp_ls.setup {}
-- cmake language server
lspconfig.cmake.setup {}
-- gradle language server
lspconfig.gradle_ls.setup {}
-- python language server
lspconfig.pyright.setup {}
-- typescript language server
lspconfig.tsserver.setup {}

-- css language server
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.cssls.setup {
  capabilities = capabilities
}
