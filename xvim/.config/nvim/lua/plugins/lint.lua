return {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
        linters = {
            ["markdownlint-cli2"] = {
                args = { "--config", "~/.config/markdownlint/.markdownlint-cli2.jsonc", },
            },
        },
    },
}
