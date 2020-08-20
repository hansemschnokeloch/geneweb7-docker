#!/usr/bin/env bash

# Get latest geneweb source code from github
git clone https://github.com/geneweb/geneweb /home/geneweb/source

# Init opam and switch to 4.09
opam init --yes --disable-sandboxing
eval $(opam env)
opam switch --yes create 4.09.0
eval $(opam env)
opam install --yes benchmark camlp5.7.12 cppo dune jingoo markup stdlib-shims num unidecode uucp uunf zarith
eval $(opam env)

# Build geneweb from source
cd /home/geneweb/source
ocaml ./configure.ml --sosa-zarith
make distrib

# Install distribution
mkdir -p /home/geneweb/GeneWeb7
mv /home/geneweb/source/distribution /home/geneweb/GeneWeb7/gw7


