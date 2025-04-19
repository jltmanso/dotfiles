return {
    'mistricky/codesnap.nvim',
    build = "make",
    config = function ()
        require('codesnap').setup({
            save_path = '/tmp',
            breadcrumbs_separator = '/',
            has_breadcrumbs = true,
            show_workspace = true,
            has_line_number = true,
            bg_color = "#535c68",
            watermark = "",
            min_width = 0,
        })
    end
}
