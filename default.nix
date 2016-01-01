{ stdenv, pandoc }:

stdenv.mkDerivation rec {
  name = "mdman-${version}";
  version = "0.1";

  src = ./.;

  makeFlags = "PREFIX=$(out)";

  buildInputs = [ pandoc ];

  meta = with stdenv.lib; {
    description = "Render markdown as a manpage";
    homepage = "https://github.com/jb55/mdman";
    maintainers = with maintainers; [ jb55 ];
    license = licenses.mit;
  };

  patchPhase = ''
    substituteInPlace mdman --replace \
      pandoc \
      ${pandoc}/bin/pandoc
  '';
}
