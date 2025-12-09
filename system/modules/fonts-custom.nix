{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  pname = "fonts-custom";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "NullByteM";
    repo = "fonts-custom";
    rev = "main";
    sha256 = "";
  };

  installPhase = ''
    mkdir -p $out/share/fonts
    cp -r * $out/share/fonts/
  '';
}
