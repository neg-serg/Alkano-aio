{ stdenvNoCC , fetchFromGitHub , lib }:

stdenvNoCC.mkDerivation rec {
  pname = "alkano-aio";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "neg-serg";
    repo = "Alkano-aio";
    rev = "v${version}";
    sha256 = "sha256-q9PEEyxejRQ8UCwbqsfOCL7M70pLCOLyCx8gEFmZkWA=";
  };

  installPhase = ''
    mkdir -p $out/share/icons
    cp -r Alkano-aio/ $out/share/icons
  '';

  meta = with lib; {
    description = "Mirror of Alkano-aio";
    homepage = "https://github.com/neg-serg/Alkano-aio";
    license = licenses.gpl3;
    platforms = platforms.all;
    maintainers = with maintainers; [ neg-serg ];
  };
}