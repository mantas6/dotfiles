{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    php83
    php83Packages.composer
    nodejs_22
    go
    gcc
    luajitPackages.luarocks
    python3
    shellcheck
    ripgrep
    fd

    nixd
    alejandra
  ];
}
