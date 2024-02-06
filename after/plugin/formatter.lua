-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
    -- Enable or disable logging
    logging = true,
    -- Set the log level
    log_level = vim.log.levels.WARN,
    -- All formatter configurations are opt-in
    filetype = {
        javascript = {
            require("formatter.filetypes.javascript").prettierd
        },
        typescript = {
            require("formatter.filetypes.typescript").prettierd
        },
        javascriptreact = {
            require("formatter.filetypes.javascript").prettierd
        },
        typescriptreact = {
            require("formatter.filetypes.typescript").prettierd
        },
        html = {
            require("formatter.filetypes.html").prettierd
        },
        css = {
            require("formatter.filetypes.css").prettierd
        },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace
        },
    }
}

vim.api.nvim_command([[autocmd BufWritePost *.rs lua vim.lsp.buf.format()]])

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    command = "FormatWriteLock"
})
