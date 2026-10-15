-- Flutter: run/hot-reload/devices/emulators via :Flutter* commands.
-- flutter-tools owns dartls, so the lang.dart extra's lspconfig setup is skipped.
return {
    {
        "nvim-flutter/flutter-tools.nvim",
        ft = "dart",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            widget_guides = { enabled = true },
            closing_tags = { enabled = true },
            dev_log = { enabled = true, open_cmd = "botright 15split" },
            lsp = {
                settings = {
                    completeFunctionCalls = true,
                    renameFilesWithClasses = "prompt",
                    updateImportsOnRename = true,
                },
            },
        },
        keys = {
            { "<leader>Fr", "<cmd>FlutterRun<cr>", desc = "Flutter Run", ft = "dart" },
            { "<leader>Fq", "<cmd>FlutterQuit<cr>", desc = "Flutter Quit", ft = "dart" },
            { "<leader>FR", "<cmd>FlutterRestart<cr>", desc = "Flutter Hot Restart", ft = "dart" },
            { "<leader>Fl", "<cmd>FlutterReload<cr>", desc = "Flutter Hot Reload", ft = "dart" },
            { "<leader>Fd", "<cmd>FlutterDevices<cr>", desc = "Flutter Devices", ft = "dart" },
            { "<leader>Fe", "<cmd>FlutterEmulators<cr>", desc = "Flutter Emulators", ft = "dart" },
            { "<leader>Fo", "<cmd>FlutterOutlineToggle<cr>", desc = "Flutter Outline", ft = "dart" },
            { "<leader>Fg", "<cmd>FlutterLogToggle<cr>", desc = "Flutter Log", ft = "dart" },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            setup = {
                dartls = function()
                    return true
                end,
            },
        },
    },
    {
        "folke/which-key.nvim",
        opts = { spec = { { "<leader>F", group = "flutter", icon = "" } } },
    },
}
