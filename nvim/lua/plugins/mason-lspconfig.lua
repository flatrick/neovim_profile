-- ~/.config/nvim/lua/plugins/mason-lspconfig.lua
return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "pyright" },
      automatic_installation = true,
    })

    local lspconfig = require("lspconfig")

    require("mason-lspconfig").setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({})
      end,
    })

    local on_attach = function(client, bufnr)
      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
    end

    -- Custom LSP settings
    lspconfig.lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        },
      },
    })

  end,
}
