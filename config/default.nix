{
  imports = [ ./keymaps.nix ./lsp.nix ./opts.nix ./plugins ];

  colorschemes.modus = {
    enable = true;
    settings = { line_nr_column_background = false; };
  };
}
