{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  pname = "fonts-custom";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "x1nf3ct";
    repo = "fonts-custom";
    rev = "main";
    sha256 = "sha256-Qlm9edsWu6k3a9PctD0th6rsIxPb+W9l4eH3ZWq+vHk=";
  };

  installPhase = ''
    mkdir -p $out/share/fonts
    cp -r * $out/share/fonts/
  '';
}
