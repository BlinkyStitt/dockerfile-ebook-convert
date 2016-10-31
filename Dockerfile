# easily convert ebooks

FROM bwstitt/library-debian:jessie

RUN mkdir /target
VOLUME ["/target"]
WORKDIR /target

RUN docker-apt-install calibre

ENTRYPOINT ["ebook-convert"]
