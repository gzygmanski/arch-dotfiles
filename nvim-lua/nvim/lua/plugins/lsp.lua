local lspconfig = require('lspconfig')

-- local function custom_capabilittis()
--     local capabilities = vim.lsp.protocol.make_client_capabilities()
--     capabilities.textDocument.completion.completionItem.snippetSupport = true
--     return capabilities 
-- end

lspconfig.tsserver.setup {
    filetypes = {'javascript', 'javascriptreact', 'typescript', 'typescriptreact'},
    root_dir = function() return vim.loop.cwd() end,
    -- capabilities = custom_capabilittis()
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    signs = { severity_limit = "Warning" },
    virtual_text = { spacing = 0, prefix = '', severity_limit = "Warning" },
    underline = false,
    update_in_insert = false 
})

local opts = {
    error_sign               = '',
    warn_sign                = '',
    hint_sign                = '',
    infor_sign               = '',
    dianostic_header_icon    = '',
    code_action_icon         = '',
    finder_definition_icon   = '',
    finder_reference_icon    = '',
    definition_preview_icon  = '',
    border_style             = 1,
    rename_prompt_prefix     = ''
}

require('lspsaga').init_lsp_saga(opts)
