{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "simple-sddm-2";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "NullByteM";
    repo = "simple-sddm-2";
    rev = "main";
    sha256 = "";
  };

  installPhase = ''
    mkdir -p $out/share/sddm/themes/simple-sddm-2
    cp -r * $out/share/sddm/themes/simple-sddm-2
  '';
}
