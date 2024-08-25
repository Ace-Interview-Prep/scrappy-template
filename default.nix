{ mkDerivation, aeson, base, bytestring, containers, lens, lib
, modern-uri, network-uri, parsec, parser-combinators, text
, transformers, pkgs
}:
let
  scrappy-core = pkgs.fetchFromGitHub {
    owner = "Ace-Interview-Prep";
    repo = "scrappy-core";
    rev = "656be0c26ba86dc783f1ddda809be0d97b848efa";
    sha256 = "sha256-1Ktja/xwStOhPIhJnV1o+Vf/u+49JJ/ysUL2aEmC20g=";
  };
in 
mkDerivation {
  pname = "scrappy-template";
  version = "0.0.1";
  src = ./.;
  libraryHaskellDepends = [
    aeson base bytestring containers lens modern-uri network-uri parsec
    parser-combinators text transformers scrappy-core
    (pkgs.haskellPackages.callPackage scrappy-core {})
  ];
  homepage = "https://github.com/Ace-Interview-Prep/scrappy";
  description = "html pattern matching library and high-level interface concurrent requests lib for webscraping";
  license = lib.licenses.bsd3;
}
