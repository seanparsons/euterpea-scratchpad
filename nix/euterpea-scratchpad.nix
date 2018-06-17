{ mkDerivation, base, Euterpea, stdenv }:
mkDerivation {
  pname = "euterpea-scratchpad";
  version = "0.1.0.0";
  src = ./..;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base Euterpea ];
  license = stdenv.lib.licenses.unfree;
  hydraPlatforms = stdenv.lib.platforms.none;
}
