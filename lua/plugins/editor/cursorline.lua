-- Plugin used to highlight the line the cursor is on
return {
    "ya2s/nvim-cursorline",
    config = function()
        require("nvim-cursorline").setup({
            cursorline = {
                enable = true,
                timeout = 0,
                number = true,
            },
            cursorword = {
                enable = true,
                min_length = 3,
                hl = { underline = true },
            },
        })
    end,
}
