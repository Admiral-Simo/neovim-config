require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- Set line numbers color
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffff54" })

    -- Set other colors as needed
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
