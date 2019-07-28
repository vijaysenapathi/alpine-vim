FROM alpine:latest AS builder

LABEL maintainer="vijaysenapathi@gmail.com"

# Install dependencies
RUN apk add --no-cache \
  build-base \
  ncurses-dev \
  git

# Build vim from git source
RUN git clone https://github.com/vim/vim \
  && cd vim \
  && make \
  && make install

FROM alpine:latest

COPY --from=builder /usr/local/bin/ /usr/local/bin
COPY --from=builder /usr/local/share/vim/ /usr/local/share/vim/

COPY vimrc /root/.vimrc
COPY bundle /root/.vim/bundle

RUN apk add --no-cache \
  ncurses
