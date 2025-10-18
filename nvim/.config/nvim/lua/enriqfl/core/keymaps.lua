local opts = {noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "moves lines down in visual selection"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "moves lines up in visual selection"})

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered}"})

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search hl", silent = true}) -- clears search highlights
vim.keymap.set("n", "x", '"_x"', opts) -- prevents deleted characters from copying to clipboard

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word cursor is on globally"})

-- Highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text";
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true}),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>") -- go to next
    vim.keymap.set("n", "<leader>tp", "<cmd>tabn<CR>") -- go to prev
vim.keymap.set("n", "<leader>tf", "<cmd>tabn<CR>") -- open current tab in new tab

vim.keymap.set("n", "<leader>fp", function()
    local filePath = vim.fn.expand("%:~") -- Gets the filepath relative to the home directory
    vim.fn.setreg("+", filePath) -- Copy the file path to the clipboard register
    print("File path copied to clipboard: " .. filePath)
end, { desc = "Copy the file path to clipboard"})


vim.keymap.set('n', '<C-h>', '<C-w><C-l>', { desc= 'Move focus to the right window'})
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc= 'Move focus to the left window'})
vim.keymap.set('n', '<C-h>', '<C-w><C-j>', { desc= 'Move focus to the lower window'})
vim.keymap.set('n', '<C-h>', '<C-w><C-k>', { desc= 'Move focus to the upper window'})

