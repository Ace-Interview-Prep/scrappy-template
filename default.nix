{ mkDerivation, aeson, base, bytestring, containers, lens, lib
, modern-uri, network-uri, parsec, parser-combinators, text
, transformers
}:
mkDerivation {
  pname = "scrappy-template";
  version = "0.0.1";
  src = ./.;
  libraryHaskellDepends = [
    aeson base bytestring containers lens modern-uri network-uri parsec
    parser-combinators text transformers scrappy-core
  ];
  homepage = "https://github.com/Ace-Interview-Prep/scrappy";
  description = "html pattern matching library and high-level interface concurrent requests lib for webscraping";
  license = lib.licenses.bsd3;
}
