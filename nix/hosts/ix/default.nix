# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
{...}: {
  imports = [
    ./hardware.nix
    ../../modules
  ];

  features = [
    "nvidia"
    "desktop"
    "develop"
  ];

  services.xserver.dpi = 100;

  # https://nixos.wiki/wiki/Power_Management
  services.udev.extraRules = ''
    ACTION=="add", SUBSYSTEM=="pci", DRIVER=="pcieport", ATTR{power/wakeup}="disabled"
  '';

  networking.hostName = "ix";

  system.stateVersion = "24.05";
}
