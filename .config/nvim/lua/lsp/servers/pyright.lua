local pyright = {}

function pyright.setup(config, _)
    config.settings = {
        pyright = {
            disableOrganizeImports = true,
        },
        python = {
            analysis = {
                -- To be added
            },
        },
    }

    return config

end

return pyright
