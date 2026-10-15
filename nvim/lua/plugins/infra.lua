-- extra tooling for infra / backend work on top of the LazyVim lang extras
return {
    {
        "mason-org/mason.nvim",
        opts = {
            ensure_installed = {
                "shellcheck",
                "shfmt",
                "bash-language-server",
                "tflint",
            },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "hcl",
                "terraform",
                "nginx",
                "proto",
                "graphql",
                "jsdoc",
                "make",
                "ssh_config",
                "gitignore",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                bashls = {},
            },
        },
    },
    {
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                sh = { "shellcheck" },
                terraform = { "tflint" },
            },
        },
    },
}
