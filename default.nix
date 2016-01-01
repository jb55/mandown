{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  pandoc = pkgs.pandoc;
in stdenv.mkDerivation rec {
  name = "mdman-${version}";
  version = "0.3";

  src = ./.;

  makeFlags = "PREFIX=$(out)";

  buildInputs = [ pandoc ];

  meta = with stdenv.lib; {
    description = "Render markdown as a manpage";
    homepage = "https://github.com/jb55/mdman";
    maintainers = with maintainers; [ jb55 ];
    license = licenses.gpl2;
  };

  patchPhase = ''
    substituteInPlace mdman --replace \
      pandoc \
      ${pandoc}/bin/pandoc
  '';
}
