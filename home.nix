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

}
