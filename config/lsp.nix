{
  lsp.servers = {
    lua_ls = {
      enable = true;
      settings = { };
    };

    nixd = {
      enable = true;
      settings = {
        cmd = [ "nixd" ];
        filetypes = [ "nix" ];
        root_markers = [ "flake.nix" "git" ];
      };
    };
  };
}
