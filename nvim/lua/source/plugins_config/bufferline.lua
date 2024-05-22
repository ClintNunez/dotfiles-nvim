require 'bufferline'.setup (
    {
        options = {
            show_buffer_close_icons = true,
            show_close_icon = false,
            color_icons = true,
            hover = {
                enabled = true,
                delay = 200,
                reveal = { 'close' }
            },
            diagnostics = 'nvim_lsp',
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                local s = " "
                for e, n in pairs(diagnostics_dict) do
                    local sym = e == "error" and " "
                    or (e == "warning" and " " or "" )
                    s = s .. n .. sym
                end
                return s
            end
        },
    }
)
