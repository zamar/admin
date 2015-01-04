BINDIR = /usr/local/bin

BASHSCRIPTS =
PERLSCRIPTS = myprogs

default:
	perl -c $(PERLSCRIPTS)

install:
	mkdir -p -m 755 $(BINDIR)
	cp $(BASHSCRIPTS) $(PERLSCRIPTS) $(BINDIR)
