{...}: {
  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  boot.kernel.sysctl = {
    #    "net.ipv4.ip_unprivileged_port_start" = 0;
  };
}
