FROM ubuntu:latest

# ------------------------------------------------------------------------------------ deconf error fix
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NOWARNINGS="yes"

# ------------------------------------------------------------------------------------ general
ENV SHELL=/bin/bash

RUN apt-get update && \
  apt-get install apt-utils -y

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install git -y && \
  apt-get install bash-completion && \
  apt install curl -y && \
  apt install ripgrep && \
  apt install fzf && \
  apt install build-essential -y
WORKDIR /root

# ------------------------------------------------------------------------------------ nvim
RUN curl -LO https://github.com/neovim/neovim/releases/download/v0.7.0/nvim.appimage && \
  chmod u+x nvim.appimage && \
  ./nvim.appimage --appimage-extract && \
  mv squashfs-root / && \
  ln -s /squashfs-root/AppRun /usr/bin/nvim && \
  rm nvim.appimage

# ------------------------------------------------------------------------------------ nvim config
RUN mkdir -p ~/.config/nvim/

# ------------------------------------------------------------------------------------ TODO IMPORT CONFIG
#COPY C:/dev/ovim/ .config/nvim/


# ------------------------------------------------------------------------------------ add packer
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

CMD ["sleep", "infinity"]