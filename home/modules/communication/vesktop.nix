{...}: {
  programs.vesktop = {
    enable = true;
    settings = {
      discordBranch = "stable";
      minimizeToTray = false;
      arRPC = false;
      customTitlebar = true;
      tray = false;
      useQuickCss = true;
      plugins = {
        ClearURLs.enable = true;
        AnonymiseFileNames.enable = true;
        AlwaysTrust.enable = true;
        WebScreenShareFixes.enable = true;
      };
    };
  };
}
