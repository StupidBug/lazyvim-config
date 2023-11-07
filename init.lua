-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Switch input method when enter or leave insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        vim.cmd(":silent:!im-select com.apple.keylayout.ABC")
    end,
})
vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
        vim.cmd(":silent:!im-select com.sogou.inputmethod.sogou.pinyin")
    end,
})
