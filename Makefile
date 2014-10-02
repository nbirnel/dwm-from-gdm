PROG = dwm-run
INI = dwm.desktop
PREFIX = /usr/local

install:
	@echo installing executable file to ${DESTDIR}${PREFIX}/bin
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f ${PROG} ${DESTDIR}${PREFIX}/bin
	@chmod 755 ${DESTDIR}${PREFIX}/bin/${PROG}
	@echo copying desktop file to /usr/share/xsessions/
	@mkdir -p /usr/share/xsessions/
	@cp -f ${INI} /usr/share/xsessions/
	@chmod 544 /usr/share/xsessions/${INI} 

uninstall:
	@echo removing executable file from ${DESTDIR}${PREFIX}/bin
	@rm -f ${DESTDIR}${PREFIX}/bin/${PROG}
	@echo removing desktop file from /usr/share/xsessions/${INI}
	@rm -f /usr/share/xsessions/${INI}

.PHONY: install uninstall
