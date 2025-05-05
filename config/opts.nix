{
  opts = {
    undofile = true;
    clipboard = "unnamedplus";
    updatetime = 500; # swap
    timeoutlen = 300; # keymaps

    # line numbers
    number = true;
    relativenumber = true;

    # search
    ignorecase = true;
    smartcase = true;
    inccommand = "split";

    # indent
    tabstop = 2;
    shiftwidth = 0; # uses tabstop
    softtabstop = -1; # uses shiftwidth
    smarttab = true;
    autoindent = true;
    expandtab = true;

    # visual
    showmode = false;
    termguicolors = true;
    list = true;
    pumheight = 5; # completions column height
    scrolloff = 10;
    listchars = {
      tab = "  ";
      trail = ".";
      nbsp = "_";
    };
  };
}
