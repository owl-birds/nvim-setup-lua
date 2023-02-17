local statusm, autopairs = pcall(require, "nvim-autorepairs");
if (not status) then return end 

autopairs.setup({
    disable_filetype = { "TelescopePrompt" , "vim" },
})
