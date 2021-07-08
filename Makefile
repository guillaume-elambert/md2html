.PHONY: install clean-install delete uninstall

install:
	@ sudo cp md2html /usr/bin/
	@ sudo chmod 755 /usr/bin/md2html
	@ echo "md2html installed in /usr/bin/. See \"which md2html\"."

delete:
	@ rm -r "`pwd`"

uninstall:
	@ sudo rm /usr/bin/md2html
	@ echo "md2html removed."

clean-install: install delete
