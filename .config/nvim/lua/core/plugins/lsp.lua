return {

  "hrsh7th/nvim-cmp",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "saadparwaiz1/cmp_luasnip",
    "j-hui/fidget.nvim",
    "L3MON4D3/LuaSnip",

    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    { -- java
      "mfussenegger/nvim-jdtls",
      -- ft = "java"
    },
    {
      "ray-x/lsp_signature.nvim",
      event = "VeryLazy",
      opts = {},
      config = function(_, opts) require 'lsp_signature'.setup(opts) end
    }
  },

  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    require("fidget").setup()
    require("mason").setup()
    require("mason-lspconfig").setup({
      handlers = {
        function(server)
          require("lspconfig")[server].setup {
            capabilities = capabilities
          }
        end,
        ["jdtls"] = function()
          -- do nothing
        end,
        ["biome"] = function()
          -- do nothing
        end,
        ["tsserver"] = function()
          -- do nothing
        end,
      },
    })
    local cmp = require("cmp")
    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      window = {
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        -- ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
        { name = "neorg" },
      }, {
        { name = 'buffer' },
      })
    })
  end,
}
