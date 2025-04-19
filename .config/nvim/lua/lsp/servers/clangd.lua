local clangd = {}

function clangd.setup(config, _)
    config.cmd = { 'clangd', '--enable-config', '--offset-encoding=utf-16' }
    config.filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' }

    return config
end

return clangd
