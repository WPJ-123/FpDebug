#!/bin/bash
set -e

# Requires patched verions of GMP and MPFR to be present at the following paths.
BASE=$(pwd)
GMP_INSTALL_DIR="${BASE}"/gmp/gmp-5.0.1/install
MPFR_INSTALL_DIR="${BASE}"/mpfr/mpfr-3.0.0/install
sed -e 's,<GMP_INSTALL_DIR>,'"${GMP_INSTALL_DIR}"',g' valgrind/fpdebug/Makefile_template.in > valgrind/fpdebug/Makefile_tmp.in
sed -e 's,<MPFR_INSTALL_DIR>,'"${MPFR_INSTALL_DIR}"',g' valgrind/fpdebug/Makefile_tmp.in > valgrind/fpdebug/Makefile.in
rm valgrind/fpdebug/Makefile_tmp.in

cd valgrind
tar -jxvf valgrind-3.7.0.tar.bz2 --strip 1
# Changes to configure:
# * fpdebug/Makefile added ac_config_files
# * does not fail on glibc 2.15
# * does not fail on kernel 4.*
mv configure_updated configure
chmod +x configure
# Add fpdebug to EXP_TOOLS
sed -e 's,exp-dhat,exp-dhat fpdebug,g' Makefile.in > Makefile_tmp.in
mv Makefile_tmp.in Makefile.in
./configure --prefix="${BASE}"/valgrind/install
# FpDebug has no tests yet and Valgrind excepts some
cp -R none/tests fpdebug
make install

