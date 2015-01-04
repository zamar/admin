CONFDIR = /etc/sshbackup
CONFFILES = meripeto_pics_sync.backup meripeto_pics_snapshot.backup meripeto_work_snapshot.backup meripeto_work_sync.backup

default:
	true

install:
	mkdir -p -m 755 ${CONFDIR}
	cp $(CONFFILES) $(CONFDIR)
