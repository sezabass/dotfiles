#clear genymotion cache files and restart VirtualBox
alias fixgenymotion='sudo /Library/StartupItems/VirtualBox/VirtualBox restart'

#flush dns
alias reload='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

function fuse() {
	local SERVER="dev01c6"
	local USER="ccastro"
	local VOLUME="/Volumes/${SERVER}"
	diskutil unmount force /Volumes/dev01c6
	#umount $VOLUME 
	mkdir -p $VOLUME
	sshfs -o auto_cache,reconnect,workaround=all ${USER}@${SERVER}.srv.office:/home/${USER}/ $VOLUME
}
