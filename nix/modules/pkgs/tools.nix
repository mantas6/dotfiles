{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    neovim
    wget
    curl
    git
    fastfetch
    lf
    bat
    tmux
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
    tealdeer

    pciutils
  ];
}
