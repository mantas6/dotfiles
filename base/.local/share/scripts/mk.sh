#!/bin/sh

[ -f "$1" ] && exit 1

printf "#!/bin/sh\n\n" >> "$1"
chmod +x "$1"
exit 0
