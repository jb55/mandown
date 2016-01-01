{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  pandoc = pkgs.pandoc;
  man = pkgs.man;
in stdenv.mkDerivation rec {
  name = "mandown-${version}";
  version = "0.7";

  src = ./.;

  makeFlags = "PREFIX=$(out)";

  buildInputs = [ ];

  meta = with stdenv.lib; {
    description = "Render markdown as a manpage";
    homepage = "https://github.com/jb55/mandown";
    maintainers = with maintainers; [ jb55 ];
    license = licenses.gpl2;
  };

  patchPhase = ''
    substituteInPlace mandown --replace \
      pandoc \
      ${pandoc}/bin/pandoc

    substituteInPlace mandown --replace \
      'man "$tmpfile"' \
      "${man}/bin/man \"\$tmpfile\""
  '';
}
