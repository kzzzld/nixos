{ ... }: {
  programs.chromium = {
    enable = true;
    extensions = [
      { id = "jplgfhpmjnbigmhklmmbgecoobifkmpa"; } # ProtonVPN
      { id = "ghmbeldphafepmbegfdlkpapadhbakde"; } # Proton Pass
      { id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; } # Ublock Origin Lite
      { id = "mnjggcdmjocbbbhaepdhchncahnbgone"; } # SponsorBlock
    ];
  };
}
