return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#080706",
                bg_dark = "#080706",
                bg_highlight = "#6f665f",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#9e9286",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#6f665f",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#6f665f",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#96423c",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#a5342f",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#a67a43",
                -- green: Comments, strings, success states, git additions
                green = "#51604f",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#8c6f4b",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#5a6674",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#7b5a6a",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#967284",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
