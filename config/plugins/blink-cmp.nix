{
  plugins.blink-cmp = {
    enable = true;

    settings = {
      appearance = {
        nerd_font_variant = "mono"; # TODO: change based on font?
      };
      cmdline = {
        completion = {
          menu = { auto_show = true; };
        };
      };
      completion = {
        ghost_text.enabled = true;
      };
    };
  };
}
