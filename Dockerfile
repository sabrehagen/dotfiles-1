FROM archlinux/base:latest

ENV DOTFILES=$HOME

RUN pacman -Sy --noconfirm \
  git

RUN git clone https://github.com/Brettm12345/dotfiles $DOTFILES --depth 1 && \
  $DOTFILES/install.sh
