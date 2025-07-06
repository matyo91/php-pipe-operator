FROM debian:12

RUN apt update \
    && apt install -y pkg-config build-essential autoconf bison re2c libxml2-dev

COPY php-src /php-src

WORKDIR /php-src

RUN ./buildconf

RUN ./configure --disable-pdo --disable-opcache --disable-xml --without-sqlite3

RUN make -j8

RUN make install

CMD [ "php", "-a" ]
