CONFDIR = /etc/sshbackup
CONFFILES = pics_sync.backup pics_snapshot.backup home_snapshot.backup home_sync.backup

default:
	true

install:
	mkdir -p -m 755 ${CONFDIR}
	cp $(CONFFILES) $(CONFDIR)
