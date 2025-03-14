{
  lib,
  config,
  pkgs,
  ...
}: {
  config = lib.mkIf (lib.elem "desktop" config.features) {
    environment.systemPackages = with pkgs; [
      xorg.xinit
      xclip
      arandr
      autorandr
      picom
      dex
      redshift
      unclutter
      numlockx
      xssstate

      (
        rofi.override {
          plugins = [rofi-emoji];
        }
      )

      lxappearance
      gnome-themes-extra
      feh

      alacritty
      chromium
      firefox
    ];
  };
}
