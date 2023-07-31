default:
    @just --list


build-qcow:
    #!/usr/bin/env bash
    set -e
    nixos-generate -f qcow -c ./configuration.nix
