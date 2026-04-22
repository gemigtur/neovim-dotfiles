--require("nvchad.configs.lspconfig").defaults()

require("nvchad.configs.lspconfig").defaults()

-- enable simple servers
vim.lsp.enable({
  "html",
  "cssls",
  "tsserver", -- 👈 JavaScript / TypeScript / Node
  "gopls",
  "basedpyright",
})

-- custom config for tsserver
vim.lsp.config.tsserver = {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
  root_dir = vim.fs.root(0, {
    "package.json",
    "tsconfig.json",
    "jsconfig.json",
    ".git",
  }),
}

-- cusom config for go 
vim.lsp.config.gopls = {
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = vim.fs.root(0, {
    "go.work",
    "go.mod",
    ".git",
  }),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
}

vim.lsp.config.basedpyright = {
  cmd = { "basedpyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_dir = vim.fs.root(0, {
    "pyproject.toml",
    "setup.py",
    "setup.cfg",
    "requirements.txt",
    "Pipfile",
    "pyrightconfig.json",
    ".git",
  }),
}

--local servers = { "html", "cssls" }
--vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
