{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-emoji
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      nerd-fonts.fira-code
      nerd-fonts.jetbrains-mono
      fira-code
      fira-code-symbols
      fira-sans
      hack-font
      font-awesome
      fira-code
      jetbrains-mono
      open-sans
      corefonts
      vista-fonts
      ibm-plex
      roboto-serif
      roboto
      (callPackage ./fonts-custom.nix {})
    ];
  };
}
