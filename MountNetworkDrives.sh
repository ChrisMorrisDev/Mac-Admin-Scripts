sudo -u $(stat -f "%Su" /dev/console) /bin/sh <<'END' #Detect the logged in user

HOST="HOSTNAME"; #smb hostname
PATH="VOLUME"; #the path of a folder in the smb (optional)

/usr/bin/open smb://"$HOST$PATH"
