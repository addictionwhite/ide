FROM alpine:latest

RUN apk update
RUN apk add vim
RUN apk add curl
RUN apk add git
RUN apk add php

RUN  cd ~ &&  \
git clone https://github.com/addictionwhite/dotfiles/ &&  \
cd dotfiles && \
chmod 777 ./install.sh && \
sh ./install.sh

RUN apk add npm
RUN npm -g install intelephense

