local yamlls = {}

function yamlls.setup(config, _)
    config.settings = {
        redhat = {
            telemetry = {
                enable = false,
            },
        },
        yaml = {
            format = {
                enable = false
            },
            valdiate = true,
            hover = true,
            schemaStore = {
                enable = true
            },
            schemas = require('schemastore').yaml.schemas(),
        },
    }

    return require('yaml-companion').setup({
        lspconfig = config,
    })
end

return yamlls
