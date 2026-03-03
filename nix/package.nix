{
  cli11,
  cmake,
  extra-cmake-modules,
  lib,
  qttools,
  stdenv,
  wrapQtAppsHook,
  ...
}:

stdenv.mkDerivation rec {
  pname = "inputactions-ctl";
  version = "0.9.0.0";

  src = ./..;

  nativeBuildInputs = [
    cmake
    extra-cmake-modules
    wrapQtAppsHook
  ];

  buildInputs = [
    cli11
    qttools
  ];

  meta = with lib; {
    description = "InputActions control tool";
    license = licenses.gpl3;
    homepage = "https://github.com/InputActions/ctl";
  };
}
