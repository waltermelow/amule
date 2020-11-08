#####################
#
# Basado en: https://github.com/amule-project/amule/blob/master/.github/workflows/ccpp.yml
#
#####################

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive" TZ="Europe/Madrid"

RUN apt update && \ 
    apt upgrade -y && \
    apt install -y automake build-essential autopoint gettext devscripts equivs libwxgtk3.0-gtk3-dev zlib1g-dev libcrypto++-dev

VOLUME /usr/src/amule

WORKDIR /usr/src/amule


# Una vez creado el entorno de compilacion => compilacion
# ========================================================
#                   git clone https://github.com/amule-project/amule.git && \
#                   cd amule && \
#                   ./autogen.sh && \
#                   mk-build-deps -i && \
#                   ./configure --enable-wxcas --enable-cas --enable-webserver --enable-amule-gui --enable-amule-daemon --enable-alcc --enable-alc --enable-amulecmd --enable-geoip --with-boost  && \  # o solo: ./configure --enable-amulecmd
#                   make
#                   ls -alhtr src/
#                   ls -alh src/amulecmd
