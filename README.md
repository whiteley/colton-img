# colton-img

cribbed from https://github.com/mitchellh/nixos-config/tree/main/iso

```console
; ./build.sh

Building docker image
[+] Building 0.1s (9/9) FINISHED                                                                                         
 => [internal] load build definition from Dockerfile                                                                0.0s
 => => transferring dockerfile: 37B                                                                                 0.0s
 => [internal] load .dockerignore                                                                                   0.0s
 => => transferring context: 2B                                                                                     0.0s
 => [internal] load metadata for docker.io/nixos/nix:2.8.0                                                          0.0s
 => [internal] load build context                                                                                   0.0s
 => => transferring context: 33B                                                                                    0.0s
 => [1/4] FROM docker.io/nixos/nix:2.8.0                                                                            0.0s
 => CACHED [2/4] COPY ./squashfs.nix /squashfs.nix                                                                  0.0s
 => CACHED [3/4] RUN nix-build '<nixpkgs/nixos>' -A config.system.build.squashfsStore -I nixos-config=squashfs.nix  0.0s
 => CACHED [4/4] RUN ln /result /tmp/nixos.img                                                                      0.0s
 => exporting to image                                                                                              0.0s
 => => exporting layers                                                                                             0.0s
 => => writing image sha256:c4066c915c920f3b035d7e8683793184528a249a5824c926a79730228112ab2e                        0.0s
 => => naming to docker.io/library/nixos-squashfs-builder                                                           0.0s

Running docker container detached to copy file

Copying nixos.img


Copied img to ./nixos.img
; file nixos.img
nixos.img: Squashfs filesystem, little endian, version 4.0, xz compressed, 254208464 bytes, 44766 inodes, blocksize: 1048576 bytes, created: Tue Jan  1 00:00:00 1980
```
