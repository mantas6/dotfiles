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
      # unclutter
      numlockx

      (
        rofi.override {
          plugins = [rofi-emoji];
        }
      )

      pass
      rofi-pass
      gnupg

      lxappearance
      gnome-themes-extra
      pavucontrol

      alacritty
      chromium
      firefox
      feh
    ];
  };
}
