#!/bin/sh

BINDIR=/usr/bin
CONFDIR=/etc
CACHE_DIR=/var/cache/emerald
PORT_DIR=/usr/ports
REVDEPD=/etc/revdep.d

install -d ${DESTDIR}${BINDIR}
install -d ${DESTDIR}${CONFDIR}
install -d ${DESTDIR}${PORT_DIR}
install -d ${DESTDIR}${REVDEPD}

install -dm777 ${DESTDIR}${CACHE_DIR}/packages
install -dm777 ${DESTDIR}${CACHE_DIR}/sources
install -dm777 ${DESTDIR}${CACHE_DIR}/work

install -m755 xchroot revdep pkgadd pkgdel pkgbuild emerald updateconf portsync pkgbase pkgrebuild portcreate ${DESTDIR}${BINDIR}
install -m644 emerald.conf emerald.repo emerald.alias emerald.mask revdep.conf ${DESTDIR}${CONFDIR}
