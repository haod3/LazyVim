-- bootstrap lazy.nvim, LazyVim and your plugins

if vim.g.vscode then
  -- VSCode extention
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  vim.opt.rtp:prepend(lazypath)
  require("lazy").setup({
    spec = {
      { "LazyVim/LazyVim", import = "lazyvim.plugins" },
      { import = "lazyvim.plugins.extras.vscode" },
      { import = "plugins" },
    },
  })
else
  -- ordinary Neovim
  require("config.lazy")
end
