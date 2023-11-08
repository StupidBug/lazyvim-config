return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "stylua",
                "shellcheck",
                "shfmt",
                "flake8",
            },
        },
    },
    {
        "mfussenegger/nvim-lint",
        optional = false,
        opts = {
            linters_by_ft = {
                -- Forbidden markdown lsp check
                markdown = {},
            },
        },
    },
}
