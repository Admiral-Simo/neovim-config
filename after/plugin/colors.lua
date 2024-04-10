require('kanagawa').setup({
    disable_background = true
})

function ColorMyPencils(color)
    color = color or "kanagawa"
    vim.cmd.colorscheme(color)

    -- Set other colors as needed
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
