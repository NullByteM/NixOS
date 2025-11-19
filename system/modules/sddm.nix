{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "simple-sddm-2";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "x1nf3ct";
    repo = "simple-sddm-2";
    rev = "main";
    sha256 = "sha256-2ji8kB1s9oIIy5O2cranH6tp9gAR0GUXnKMETWcEs80=";
  };

  installPhase = ''
    mkdir -p $out/share/sddm/themes/simple-sddm-2
    cp -r * $out/share/sddm/themes/simple-sddm-2
  '';
}
