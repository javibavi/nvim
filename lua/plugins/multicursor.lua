return {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    config = function()
        local mc = require("multicursor-nvim")

        mc.setup()

        local set = vim.keymap.set

        -- Add or skip cursor above/below the main cursor.
        set({ "n", "v" }, "<up>", function()
            mc.lineAddCursor(-1)
        end)
        set({ "n", "v" }, "<down>", function()
            mc.lineAddCursor(1)
        end)
        set({ "n", "v" }, "<leader><up>", function()
            mc.lineSkipCursor(-1)
        end)
        set({ "n", "v" }, "<leader><down>", function()
            mc.lineSkipCursor(1)
        end)

        -- Add or skip adding a new cursor by matching word/selection
        set({ "n", "v" }, "<leader>ma", function()
            mc.matchAddCursor(1)
        end)
        set({ "n", "v" }, "<leader>ms", function()
            mc.matchSkipCursor(1)
        end)

        -- Add all matches in the document
        set({ "n", "v" }, "<leader>A", mc.matchAllAddCursors)

        -- You can also add cursors with any motion you prefer:
        -- set("n", "<right>", function()
        --     mc.addCursor("w")
        -- end)
        -- set("n", "<leader><right>", function()
        --     mc.skipCursor("w")
        -- end)

        -- Rotate the main cursor.
        set({ "n", "v" }, "<left>", mc.nextCursor)
        set({ "n", "v" }, "<right>", mc.prevCursor)

        -- Add and remove cursors with control + left click.
        set("n", "<c-leftmouse>", mc.handleMouse)

        -- Easy way to add and remove cursors using the main cursor.
        set({ "n", "v" }, "<c-q>", mc.toggleCursor)

        set("n", "<esc>", function()
            if not mc.cursorsEnabled() then
                mc.enableCursors()
            elseif mc.hasCursors() then
                mc.clearCursors()
            else
                -- Default <esc> handler.
            end
        end)

        -- bring back cursors if you accidentally clear them
        set("n", "<leader>mr", mc.restoreCursors)

        -- Align cursor columns.
        set("n", "<leader>a", mc.alignCursors)


        -- Customize how cursors look.
        local hl = vim.api.nvim_set_hl
        hl(0, "MultiCursorCursor", { link = "Cursor" })
        hl(0, "MultiCursorVisual", { link = "Visual" })
        hl(0, "MultiCursorSign", { link = "SignColumn" })
        hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
        hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
        hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
    end,
}
