{ compiler ? "ghc822" }:

let
  release = (import ./release.nix {inherit compiler;});
in release.pkgs.stdenv.lib.overrideDerivation release.euterpea-scratchpad.env (oldAttrs: rec {
  nativeBuildInputs = (oldAttrs.nativeBuildInputs or []) ++ [
    release.cabal
    release.pkgs.haskellPackages.cabal2nix
    release.pkgs.alsaLib
    release.pkgs.vmpk
    (release.pkgs.writeScriptBin "start-fluidsynth" ''
      #!/usr/bin/env sh
      ${release.pkgs.fluidsynth}/bin/fluidsynth --server --no-shell --audio-driver=pulseaudio ${release.pkgs.soundfont-fluid}/share/soundfonts/FluidR3_GM2-2.sf2
    '')
  ];
})
