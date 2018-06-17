{ mkDerivation, alsaLib, base, stdenv }:
mkDerivation {
  pname = "PortMidi";
  version = "0.1.5.2";
  sha256 = "b855a9f3c0b9796e9e8fe00bbfad47fd233e648b31c3443881f4dfa544800276";
  libraryHaskellDepends = [ base ];
  librarySystemDepends = [ alsaLib ];
  homepage = "http://haskell.org/haskellwiki/PortMidi";
  description = "A binding for PortMedia/PortMidi";
  license = stdenv.lib.licenses.bsd3;
}
