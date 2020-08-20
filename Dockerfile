FROM ubuntu:20.04

# Install packages
RUN \
    apt-get update && \
    apt-get -y install -y --no-install-recommends ocaml curl make m4 unzip bubblewrap gcc libgmp-dev git build-essential opam ca-certificates

# Create geneweb user
RUN useradd -u 1000 -m geneweb

# Change user
USER geneweb

# Copy files
RUN mkdir -p /home/geneweb/GeneWeb7/gw7_bash
COPY --chown=geneweb:geneweb geneweb_install.sh /home/geneweb/GeneWeb7/gw7_bash
COPY --chown=geneweb:geneweb gwd_start.sh /home/geneweb/GeneWeb7/gw7_bash
COPY --chown=geneweb:geneweb gwsetup_start.sh /home/geneweb/GeneWeb7/gw7_bash

# Make scripts executable
RUN chmod a+x /home/geneweb/GeneWeb7/gw7_bash/geneweb_install.sh
RUN chmod a+x /home/geneweb/GeneWeb7/gw7_bash/gwsetup_start.sh
RUN chmod a+x /home/geneweb/GeneWeb7/gw7_bash/gwd_start.sh

# Install geneweb
RUN /home/geneweb/GeneWeb7/gw7_bash/geneweb_install.sh




