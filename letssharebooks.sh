#! /bin/sh

echo " Check if you started Calibre's content server:"
echo " http://localhost:8080 (help: http://bit.ly111IWwt)"
echo " Hang out at http://crypto.cat room: letssharebooks"
echo " Stop sharing books by pressing Ctrl+c"

exec 3>&1
ssh -N -T ssh.memoryoftheworld.org -l tunnel -R 0:localhost:8080 -p 722 2>&1 1>&3 | sed 's|^Allocated port \([[:digit:]]\{4,5\}\)\(.*\)| Your temporary public URL is http://www\1.memoryoftheworld.org|'