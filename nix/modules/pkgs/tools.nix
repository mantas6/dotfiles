{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    vim
    wget
    curl
    git
    fastfetch
    lf
    yazi
    bat
    stow
    zoxide
    starship
    eza
    trash-cli
    gh
    gum
    fzf
    delta
    unzip
    sysz
    htop
    btop
    htop

    pciutils
  ];

  programs.nh = {
    enable = true;
    flake = "/home/mantas/Repos/dotfiles";
  };
}
