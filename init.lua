-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--
-- Switch input method when enter or leave insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        vim.cmd(":silent:!macism com.apple.keylayout.ABC")
    end,
})
vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
        vim.cmd(":silent:!macism com.sogou.inputmethod.sogou.pinyin")
    end,
})

-- ==============================Markdown preview=========================================
-- set to 1, nvim will open the preview window after entering the Markdown buffer
-- default: 0
vim.g.mkdp_auto_start = 1
-- set to 1, the nvim will auto close current preview window when changing
-- from Markdown buffer to another buffer
-- default: 1
vim.g.mkdp_auto_close = 0
-- combine preview window
-- default: 0
-- if enable it will reuse previous opened preview window when you preview markdown file.
-- ensure to set let g:mkdp_auto_close = 0 if you have enable this option
vim.g.mkdp_combine_preview = 1
-- auto refetch combine preview contents when change markdown buffer
-- only when g:mkdp_combine_preview is 1
vim.g.mkdp_combine_preview_auto_refresh = 1
