return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    require("conform").setup({
      default_format_opts = {
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        lua = { "stylua" },
        -- Conform will run multiple formatters sequentially
        python = { "black" }, -- "isort", "black" },
        -- You can customize some of the format options for the filetype (:help conform.format)
        rust = { "rustfmt", lsp_format = "fallback" },
        cpp = { lsp_format = "fallback" },
        -- Conform will run the first available formatter
        javascript = { "biome", stop_after_first = true },
      },
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*",
        callback = function(args)
          require("conform").format({ bufnr = args.buf })
        end,
      })
    })
  end
}
