# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
{
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware.nix
    ../../modules
  ];

  networking.hostName = "l4";

  shares.server.enabled = true;

  system.stateVersion = "24.11";
}
