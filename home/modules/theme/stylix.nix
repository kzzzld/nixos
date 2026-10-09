{
  pkgs,
  inputs,
  ...
}: {
  # NOTE: Font settings are in ./font.nix file.

  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = {
    enable = true;
    autoEnable = true;
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    base16Scheme = builtins.fetchurl {
      url = "https://raw.githubusercontent.com/catppuccin/base16/99aa911b29c9c7972f7e1d868b6242507efd508c/base16/mocha.yaml";
      sha256 = "1wyn8ww8d9q8m6cycppx98n15sbms62aydf25wp9wkbv3p64bnfg";
    };
    targets = {
      qt.enable = false; # don't enable qt when using plasma
    };
  };
}
