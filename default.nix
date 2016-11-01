with import <nixpkgs> {}; {
          niftyEnv = stdenv.mkDerivation rec {
          name = "nifty-env";
          version = "1.1.1.1";
          buildInputs = [ pkgs.llvmPackages.llvm pkgs.llvmPackages.clang pkgs.git pkgs.erlang pkgs.llvm pkgs.clang pkgs.gnumake pkgs.pkgconfig pkgs.stdenv ];
          CFLAGS = "-I/nix/store/10s2xrw5zwp8dj5dkvbc3ksmc4wqz3w7-clang-3.7.1/include -I${pkgs.llvmPackages.clang}/include -I${pkgs.clang}/include -I${pkgs.llvmPackages.llvm}/include";
          LDFLAGS = "-L/nix/store/10s2xrw5zwp8dj5dkvbc3ksmc4wqz3w7-clang-3.7.1/lib -L${pkgs.llvmPackages.clang}/lib -I${pkgs.clang}/include -I${pkgs.llvmPackages.llvm}/include";

     };
}
