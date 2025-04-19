return {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    lazy = false,
    dependencies = {
        -- Automatically install LSPs and related tools to stdpath for Neovim
        { 'williamboman/mason.nvim', config = true }, -- NOTE: Must be loaded before dependants
        'williamboman/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',

        -- Useful status updates for LSP.
        'j-hui/fidget.nvim',
        'hrsh7th/cmp-nvim-lsp',
        'jose-elias-alvarez/null-ls.nvim',
        'b0o/SchemaStore.nvim', -- NOTE: move to a separate file
        'someone-stole-my-name/yaml-companion.nvim',  -- NOTE: move a separate file

        -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
        -- used for completion, annotations and signatures of Neovim apis
        { 'folke/lazydev.nvim', opts = {} },
    },
    config = function()
        vim.diagnostic.config({
            virtual_text = {
                prefix = '●',
                source = 'if_many',
            },
            float = {
                source = 'if_many',
            },
        })

        require('fidget').setup({
            progress = {
                suppress_on_insert = false,
                ignore = {
                    'null-ls',
                }
            },
        })

        local on_attach = require('lsp').on_attach
        local make_config = require('lsp').make_config

        require('mason').setup()
        require('mason-tool-installer').setup({
            ensure_installed = {
                'ansible-language-server',
                'bash-language-server',
                'clangd',
                'cmake-language-server',
                'dockerfile-language-server',
                'json-lsp', 'jq',
                'lua-language-server', 'stylua',
                'texlab',
                'yaml-language-server',
            }
        })

        require('mason-lspconfig').setup({
            handlers = {
                require('lsp.servers.null_ls').setup(on_attach),
                -- require('lspconfig')['ansible'].setup(make_config()),
                require('lspconfig')['bashls'].setup(make_config()),
                -- require('lspconfig')['bazel-rc-lsp'].setup(make_config()),
                -- require('lspconfig')['bitbake_lanague_server'].setup(make_config()),
                require('lspconfig')['clangd'].setup(require('lsp.servers.clangd').setup(make_config(), on_attach)),
                require('lspconfig')['cmake'].setup(make_config()),
                require('lspconfig')['dockerls'].setup(make_config()),
                require('lspconfig')['jsonls'].setup(require('lsp.servers.jsonls').setup(make_config(), on_attach)),
                require('lspconfig')['lua_ls'].setup(require('lsp.servers.lua').setup(make_config(), on_attach)),
                require('lspconfig')['pyright'].setup(require('lsp.servers.pyright').setup(make_config(), on_attach)),
                require('lspconfig')['texlab'].setup(require('lsp.servers.texlab').setup(make_config(), on_attach)),
                require('lspconfig')['yamlls'].setup(require('lsp.servers.yamlls').setup(make_config(), on_attach)),
            }
        })

        return {
            on_attach = on_attach,
            make_config = make_config,
        }

    end,
}

