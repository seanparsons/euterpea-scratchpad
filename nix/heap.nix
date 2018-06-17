{ mkDerivation, base, QuickCheck, stdenv }:
mkDerivation {
  pname = "heap";
  version = "1.0.4";
  sha256 = "a4c2489e1031e9e8d96dff61ac8c15e5fcd3541080d81e0e47e298b3aad3172a";
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base QuickCheck ];
  description = "Heaps in Haskell";
  license = stdenv.lib.licenses.bsd3;
}
