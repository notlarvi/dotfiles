vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
local autocmd = vim.api.nvim_create_autocmd
autocmd('LspAttach', {
  callback = function(e)
    local opts = { buffer = e.buf }
    vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format() end, opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  end
})
--nnoremap crv <Cmd>lua require('jdtls').extract_variable()<CR>
--vnoremap crv <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
--nnoremap crc <Cmd>lua require('jdtls').extract_constant()<CR>
--vnoremap crc <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
--vnoremap crm <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>


--" If using nvim-dap
--" This requires java-debug and vscode-java-test bundles, see install steps in this README further below.
--nnoremap <leader>df <Cmd>lua require'jdtls'.test_class()<CR>
--nnoremap <leader>dn <Cmd>lua require'jdtls'.test_nearest_method()<CR>

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<leader>lh", function()
  vim.cmd("Leet hints")
end)
vim.keymap.set("n", "<leader>lt", function()
  vim.cmd("Leet test")
end)
vim.keymap.set("n", "<leader>ls", function()
  vim.cmd("Leet submit")
end)
vim.keymap.set("n", "<leader>lm", function()
  vim.cmd("Leet menu")
end)
vim.keymap.set("n", "<leader>ll", function()
  vim.cmd("Leet list")
end)
vim.keymap.set("n", "<leader>ld", function()
  vim.cmd("Leet desc")
end)
vim.keymap.set("n", "<leader>lc", function()
  vim.cmd("Leet console")
end)
vim.keymap.set("n", "<leader>lr", function()
  vim.cmd("Leet reset")
end)
