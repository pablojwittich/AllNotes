-- Este plugin es para que nvim sepa la sintaxis de cada lenguaje
return
{
    "neovim/nvim-lspconfig",
    dependecies =
    {
        "williamboman/mason.nvim",
        "folke/lazydev.nvim", -- El neodev fue archivado por el propietario ¿?
    },
    config = function()
        local on_attach = function(client, buffnr)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = buffnr })
        end
        require("lazydev").setup()

        require("lspconfig").lua_ls.setup({
            on_attach = on_attach,
            settings =
            {
                lua =
                {
                    telemetry = { enable = false },
                    workspace = { checkThirdParty = false },
                },
            },
        })
        require("lspconfig").ast_grep.setup({})
        require("lspconfig").clangd.setup({})
        require("lspconfig").harper_ls.setup({})
        require("lspconfig").intelephense.setup({})
        require("lspconfig").luau_lsp.setup({})
        require("lspconfig").omnisharp.setup({})
        require("lspconfig").phpactor.setup({})
        require("lspconfig").psalm.setup({})
        require("lspconfig").templ.setup({})
        require("lspconfig").twiggy_language_server.setup({})
        --require("lspconfig").mdformat.setup({})
        --require("lspconfig").markdow_toc.setup({})
        --require("lspconfig").markdow_oxide.setup({})
    end,
}
