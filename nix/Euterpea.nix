{ mkDerivation, array, arrows, base, bytestring, containers
, deepseq, ghc-prim, HCodecs, heap, PortMidi, random, stdenv, stm
}:
mkDerivation {
  pname = "Euterpea";
  version = "2.0.4";
  sha256 = "866ba57a1de85d1a5b63f102c42223716a92d13747c6bdd42924e4dcf4240bd8";
  revision = "2";
  editedCabalFile = "0f8fyib7cqb4w54rrcrd00c6ca4fgfj5v9rm7mih7lyybkrs44qv";
  libraryHaskellDepends = [
    array arrows base bytestring containers deepseq ghc-prim HCodecs
    heap PortMidi random stm
  ];
  homepage = "http://www.euterpea.com";
  description = "Library for computer music research and education";
  license = stdenv.lib.licenses.bsd3;
}
