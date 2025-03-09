-- LSP keymaps

return {
  "neovim/nvim-lspconfig",
  opts = function()
    require("lspconfig").emmet_ls.setup({
      filetypes = {
        "css",
        "eruby",
        "html",
        "htmldjango",
        "javascriptreact",
        "less",
        "pug",
        "sass",
        "scss",
        "typescriptreact",
        "htmlangular",
        "njk",
      },
    })
  end,
}
