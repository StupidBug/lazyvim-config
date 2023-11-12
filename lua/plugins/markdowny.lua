return {
    --  add short cut for markdown bold, italic, etc.
    {
        "antonk52/markdowny.nvim",
        config = function()
            require("markdowny").setup()
        end,
    },
}
