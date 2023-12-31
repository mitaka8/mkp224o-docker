FROM alpine:latest
RUN mkdir -p /opt/src/mkp224o
RUN apk add --no-cache git gcc autoconf make libsodium-dev musl-dev
WORKDIR /opt/src/mkp224o
RUN git clone https://github.com/cathugger/mkp224o .
RUN ./autogen.sh
RUN ./configure
RUN make
RUN mv ./mkp224o /usr/local/bin/mkp224o
RUN git rev-parse HEAD > /git-commit
WORKDIR /
RUN rm -rf /opt/src/mkp224o
CMD ["mkp224o"]
