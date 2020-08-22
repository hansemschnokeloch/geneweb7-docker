# Compile geneweb
FROM ubuntu:20.04 AS builder

# Install packages
RUN \
    apt-get update && \
    apt-get -y install -y --no-install-recommends ocaml curl make m4 unzip bubblewrap gcc libgmp-dev git build-essential opam ca-certificates

# Create geneweb user
RUN useradd -u 1000 -m geneweb

# Change user
USER geneweb

# Copy files
RUN mkdir -p /home/geneweb
COPY --chown=geneweb:geneweb geneweb_install.sh /home/geneweb

# Make script executable
RUN chmod a+x /home/geneweb/geneweb_install.sh

# Install geneweb
RUN /home/geneweb/geneweb_install.sh

# Create final container with compiled binaries
FROM ubuntu:20.04

# Create geneweb user
RUN useradd -u 1000 -m geneweb

# Change user
USER geneweb

# Copy files
RUN mkdir -p /home/geneweb/distribution
RUN mkdir -p /home/geneweb/scripts
RUN mkdir -p /home/geneweb/logs
COPY --from=builder --chown=geneweb:geneweb /home/geneweb/source/distribution /home/geneweb/distribution
COPY --chown=geneweb:geneweb gwd_start.sh /home/geneweb/scripts
COPY --chown=geneweb:geneweb gwsetup_start.sh /home/geneweb/scripts


# Make scripts executable
RUN chmod a+x /home/geneweb/scripts/*.sh




