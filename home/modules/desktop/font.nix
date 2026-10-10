{pkgs, lib, ...}: let
  font = "Hack Nerd Font";
  package = pkgs.nerd-fonts.hack;
in {
  home.packages = [ package ];
  fonts.fontconfig.enable = true;
  fonts.fontconfig.defaultFonts = {
    sansSerif = [font];
    monospace = [font];
  };

  programs.kitty.settings.font_family = font;

  programs.plasma.configFile = {
    kdeglobals.General.fixed = lib.mkForce "${font},10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
    kdeglobals.General.font = lib.mkForce "${font},12,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
    kdeglobals.General.menuFont = lib.mkForce "${font},10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
    kdeglobals.General.smallestReadableFont = lib.mkForce "${font},8,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
    kdeglobals.General.taskbarFont = lib.mkForce "${font},11,-1,5,50,0,0,0,0,0";
    kdeglobals.General.toolBarFont = lib.mkForce "${font},10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
    kdeglobals.WM.activeFont = lib.mkForce "${font},10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
  };

  stylix.fonts = {
    serif = {
      package = package;
      name = font;
    };

    sansSerif = {
      package = package;
      name = font;
    };

    monospace = {
      package = package;
      name = font;
    };

    emoji = {
      package = package;
      name = font;
    };
  };
}
