{ config, pkgs, lib, ... }:
{
  imports = [
  ];

  # This tells Nix to send the build to the remote builder when running on Mac
  # Without this, the build fails on Mac
  nixpkgs.system = "x86_64-linux";

  boot.cleanTmpDir = true;

  networking.firewall.allowPing = true;
  networking.firewall.allowedTCPPorts = [ 80 443 ];

  services.openssh = {
    enable = true;
    permitRootLogin = "prohibit-password";
    passwordAuthentication = false;
  };

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPI+dFnzXZ0xACwp1x9hMH0FFx4+WLj7ZiXW+j2z58sc lucian@Lucians-MacBook-Pro-2.local"
  ];

  documentation.nixos.enable = false;

}
