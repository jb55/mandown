{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  pandoc = pkgs.pandoc;
  man = pkgs.man;
in stdenv.mkDerivation rec {
  name = "mdman-${version}";
  version = "0.6";

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

    substituteInPlace mdman --replace \
      'man "$tmpfile"' \
      "${man}/bin/man \"\$tmpfile\""
  '';
}
