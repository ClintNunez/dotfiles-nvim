local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
    options = {
        mode = "tabs",
        separator_style = 'slant',
        always_show_bufferline = false,
        show_buffer_close_icons = true,
        show_close_icon = false,
        color_icons = true
    },
    highlights = {
        separator = {
            fg = '#434852',
            bg = '#333C47'
        },
        separator_selected = {
            fg = '#434852',
        },
        close_button = {
            fg = '#657b83',
            bg = '#333C47',
        },
        close_button_selected = {
            fg = '#F0FDFF',
        },
        hint = {
            fg = '#657b83',
            bg = '#333C47'
        },
        diagnostic = {
            fg = '#657b83',
            bg = '#333C47'
        },
        info = {
            fg = '#657b83',
            bg = '#333C47'
        },
        info_diagnostic = {
            fg = '#657b83',
            bg = '#333C47'
        },
        warning = {
            fg = '#FFd17f',
            bg = '#333C47'
        },
        warning_selected = {
            fg = '#FFd17f',
        },
        warning_diagnostic = {
            fg = '#FFd17f',
            bg = '#333C47'
        },
        warning_diagnostic_selected = {
            fg = '#FFd17f',
        },
        error = {
            fg = '#CE5A59',
            bg = '#333C47'
        },
        error_selected = {
            fg = '#CE5A59',
        },
        error_diagnostic = {
            fg = '#CE5A59',
            bg = '#333C47'
        },
        error_diagnostic_selected = {
            fg = '#CE5A59',
        },
        modified = {
            fg = '#657b83',
            bg = '#333C47'
        },
        duplicate = {
            fg = '#657b83',
            bg = '#333C47'
        },
        background = {
            fg = '#657b83',
            bg = '#333C47'
        },
        buffer_selected = {
            fg = '#F0FDFF',
            bold = true,
        },
        fill = {
            bg = '#434852'
        }
    },
})
