return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
        fucntion ()
            require("nvim-treesitter.install").compilers = { "clang++" }
            ensure_installed = {
            "bash",
            "html",
            "javascript",
            "json",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "query",
            "regex",
            "tsx",
            "typescript",
            "vim",
            "yaml",
            }
            return ensure_installed
        end,
        },
    },
}