{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [
    ./modules/desktop
    ./modules/communication
    ./modules/terminal
    ./modules/shell
    ./modules/util
    ./modules/editor
    ./modules/browser
    ./modules/sync
  ];

  home = {
    username = "kzzzl";
    homeDirectory = "/home/kzzzl";
    stateVersion = "26.05";
  };

  # some user services
  services.ollama.enable = true;

  home.packages = with pkgs; [
    # utilities
    wl-clipboard
    playerctl
    udiskie
    zip
    unzip
    nix-search-cli
    pinentry-qt

    # media
    obs-studio

    # terminal & shell
    fastfetch
    eza
    zoxide
    lazygit
    fzf

    # programming
    nodejs
    cargo
    stylua
    clang-tools
    alejandra
    nixd
    gcc
    cmake
    gnumake
    libtool
    tree-sitter
    lua-language-server

    # AI
    opencode

    # internet
    # NOTE: Brave is only here to use "Private Window with Tor". Tor Browser does not support ARM64 NixOS but Brave does it.
    brave
    gajim
    signal-desktop
    thunderbird

    # games
    xonotic
    ddnet

    # password namager
    # NOTE: I use Bitwarden but keep KeePassXC for other things.
    keepassxc

    # office
    libreoffice-stable
  ];

  home.activation.removeConflictingGtkrc = lib.hm.dag.entryBefore ["writeBoundary"] ''
    rm -f "$HOME/.gtkrc-2.0"
  '';
}
