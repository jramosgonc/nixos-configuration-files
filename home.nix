{ config, pkgs, ...}:

{
  home.username = "ramos";
  home.homeDirectory = "/home/ramos";

  # home.packages = [
  #	pkgs.hello
  # ];

  programs.git = {
    enable = true;
    userName = "ramos";
    userEmail = "ramos@fisica.ufc.br";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  home.sessionVariables = {
   # EDITOR = "nvim";
  };
 
  home.file = {

  };

  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        # Set default window dimensions (columns x lines)
        dimensions = {
          columns = 133;
          lines = 40;
        };
      };
    };
  };

  programs.emacs = {
    enable = true;
    # ... other emacs settings ...
    extraPackages = epkgs: with epkgs; [
      nix-ts-mode
      # Also install treesit grammars for best results
      treesit-grammars.with-all-grammars
    ];
    # This automatically adds the necessary elisp configuration
    # to load the mode.
  };

  # Make sure treesitter is enabled in general
  # (if you are not using an overlay that does this automatically)
  # programs.treesitter.enable = true; 

}
