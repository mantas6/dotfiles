{
  lib,
  ...
}: {
  imports = [
    ./desktop
    ./develop
    ./amd.nix
    ./nvidia.nix
  ];

  options.features = lib.mkOption {
    type = lib.types.listOf (lib.types.enum [
      "nvidia"
      "amd"
      "desktop"
      "develop"
    ]);

    default = [];

    description = "List of globally enabled features for this host.";
  };
}
