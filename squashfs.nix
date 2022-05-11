{ config, pkgs, ... }:

{
  imports = [
    <nixpkgs/nixos/modules/installer/netboot/netboot.nix>
  ];
}
