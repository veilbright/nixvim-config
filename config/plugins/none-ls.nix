{
  plugins.none-ls = {
    enable = true;
    sources = { formatting = { nixfmt.enable = true; }; };
    settings = {
      on_attach = ''
        -- format on save
        function(client, bufnr)
        	if client.supports_method("textDocument/formatting") then
        		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        		vim.api.nvim_create_autocmd("BufWritePre", {
        			group = augroup,
        			buffer = bufnr,
        			callback = function()
        				vim.lsp.buf.format({ async = false })
        			end,
        		})
        	end
        end
      '';
    };
  };
}
