-- Setup english and italian spell check
return {
  {
    "LazyVim/LazyVim",
    opts = {
      spell = true,
      spelllang = { "en", "it" },
    },
  },
  {
    "coffebar/transfer.nvim",
    lazy = true,
    cmd = { "TransferInit", "DiffRemote", "TransferUpload", "TransferDownload", "TransferDirDiff", "TransferRepeat" },
    opts = {},
  },
}
