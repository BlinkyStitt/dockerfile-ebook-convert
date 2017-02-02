# easily convert ebooks

FROM bwstitt/debian:jessie

RUN mkdir /target
VOLUME ["/target"]
WORKDIR /target

RUN docker-apt-install calibre

USER user
ENTRYPOINT ["ebook-convert"]
