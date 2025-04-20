return {
    'esensar/nvim-dev-container',
    dependencies = {
        'nvim-treesitter/nvim-treesitter'
    },
    event = 'VeryLazy',
    config = function ()
       require('devcontainer').setup({
            config_search_start = function ()
                if vim.g.devcontainer_selected_config == nil or vim.g.devcontainer_selected_config == "" then
                    local candidates = vim.split(
                        vim.fn.glob(vim.loop.cwd() .. "/.devcontainer/**/devcontainer.json"),
                                    "\n",
                                    { trimempty = true }
                    )
                    if #candidates < 2 then
                        vim.g.devcontainer_selected_config = vim.loop.cwd()
                    else
                        local choices = { "Select devcontainer config file to use:" }
                        for index, candidate in ipairs(candidates) do
                            table.insert(choices, index .. ". - " .. candidate)
                        end
                        local choice_index = vim.fn.inputlist(choices)
                        if choice_index > #candidates then
                            vim.notify("devcontainer config file does not exist", vim.log.levels.ERROR)
                            return {}
                        end
                        vim.g.devcontainer_selected_config = string.gsub(candidates[choice_index], "/devcontainer.json", "")
                    end
                end

                return vim.g.devcontainer_selected_config
            end
        })
    end
}
