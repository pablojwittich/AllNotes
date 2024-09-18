---Este plugin ayuda a nvim a entender la estructura de un lenguaje
return
{
    "nvim-treesitter/nvim-treesitter",
    dependecies =
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts =
    {
        ensure_installed =
        {
            "lua",
            "luadoc",
            "php",
            "phpdoc",
            "java",
            "cpp",
            "css",
            "html",
            "bash",
            "python",
            "c_sharp"
        },
        highlight = { enable = true, },
        indent = { enable = true, },
        textobjects =
        {
            enable = true,
            lookahead = true,
            keymaps =
            { -- se accede estando en el modo visual (C-v)
                ["af"] = "@funcion.outer",
                ["if"] = "@funcion.inner",
                ["ac"] = "@condicional.outer",
                ["ic"] = "@condicional.inner",
                ["al"] = "@loop.outer",
                ["il"] = "@loop.inner",
            }
        }
    },
}
