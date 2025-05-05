{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  lsp.keymaps = [
    {
      options.desc = "Code Action";
      key = "<leader>ca";
      lspBufAction = "code_action";
    }
    {
      options.desc = "Hover";
      key = "K";
      lspBufAction = "hover";
    }
    {
      options.desc = "Rename";
      key = "<leader>rn";
      lspBufAction = "rename";
    }
  ];

  keymaps = [
    {
      options.desc = "Hide search highlight";
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
      mode = [ "n" ];
    }

    {
      options.desc = "Find and replace";
      key = "<leader>s";
      action.__raw = ''
        function()
        	vim.api.nvim_feedkeys("*", "v", true)
        	vim.api.nvim_feedkeys(":%s//", "n", true)
        end
      '';
      mode = [ "n" "v" ];
    }

    # Window focus
    {
      options.desc = "Focus left window";
      key = "<C-h>";
      action = "<C-w><C-h>";
      mode = [ "n" ];
    }
    {
      options.desc = "Focus lower window";
      key = "<C-j>";
      action = "<C-w><C-j>";
      mode = [ "n" ];
    }
    {
      options.desc = "Focus upper window";
      key = "<C-k>";
      action = "<C-w><C-k>";
      mode = [ "n" ];
    }
    {
      options.desc = "Focus right window";
      key = "<C-l>";
      action = "<C-w><C-l>";
      mode = [ "n" ];
    }

    # Clipboard management
    {
      key = "d";
      action = ''"1d'';
      mode = [ "n" "v" ];
    }
    {
      key = "x";
      action = ''"1x'';
      mode = [ "n" "v" ];
    }
    {
      key = "c";
      action = ''"1c'';
      mode = [ "n" "v" ];
    }
    {
      key = "s";
      action = ''"1s'';
      mode = [ "n" "v" ];
    }
    {
      options.desc = "Swap system and neovim registers";
      key = "<leader>p";
      action.__raw = ''
        function()
        	local reg1 = vim.fn.getreginfo("1")
        	local reg_plus = vim.fn.getreginfo("+")
        	vim.fn.setreg("1", reg_plus)
        	vim.fn.setreg("+", reg1)
        end
      '';
      mode = [ "n" "v" ];
    }

    # Toggle quickfix
    {
      options.desc = "Quickfix";
      key = "<leader>q";
      action.__raw = ''
        function()
        	if vim.fn.empty(vim.fn.filter(vim.fn.getwininfo(), "v:val.loclist")) == 0 then
        		vim.cmd("lclose")
        	elseif vim.fn.empty(vim.fn.filter(vim.fn.getwininfo(), "v:val.quickfix")) == 0 then
        		vim.cmd("cclose")
        	else
        		vim.diagnostic.setloclist()
        	end
        end
      '';
    }

    # Quickfix navigation
    {
      options.desc = "Next quickfix";
      key = "<C-n>";
      action.__raw = ''
        function()
        	if vim.fn.empty(vim.fn.filter(vim.fn.getwininfo(), "v:val.loclist")) == 0 then
        		vim.cmd("lnext")
        	elseif vim.fn.empty(vim.fn.filter(vim.fn.getwininfo(), "v:val.quickfix")) == 0 then
        		vim.cmd("cnext")
        	end
        end
      '';
    }
    {
      options.desc = "Previous quickfix";
      key = "<C-p>";
      action.__raw = ''
        function()
        	if vim.fn.empty(vim.fn.filter(vim.fn.getwininfo(), "v:val.loclist")) == 0 then
        		vim.cmd("lprevious")
        	elseif vim.fn.empty(vim.fn.filter(vim.fn.getwininfo(), "v:val.quickfix")) == 0 then
        		vim.cmd("cprevious")
        	end
        end
      '';
    }
  ];
}
