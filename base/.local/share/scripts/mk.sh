#!/bin/sh

[ -f "$1" ] && exit 1

echo '#!/bin/sh' >> "$1"
chmod +x "$1"

[ "$2" = '-e' ] && nvim "$1"

exit 0
