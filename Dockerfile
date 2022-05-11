FROM nixos/nix:2.8.0

COPY ./squashfs.nix /squashfs.nix

RUN nix-build '<nixpkgs/nixos>' -A config.system.build.squashfsStore -I nixos-config=squashfs.nix

RUN ln /result /tmp/nixos.img
